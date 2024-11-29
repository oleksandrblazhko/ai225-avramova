-- 1. Отримання інформації про освітлення
CREATE OR REPLACE FUNCTION request_lighting_info(p_sculptor sculptor)
RETURNS lighting AS $$
DECLARE
    l lighting;
BEGIN
    SELECT * INTO l
    FROM lighting
    WHERE id = p_sculptor.currentLighting;
    RETURN l;
END;
$$ LANGUAGE plpgsql;

-- 2. Перегляд каталогу інструментів
CREATE OR REPLACE FUNCTION view_catalog(p_sculptor sculptor)
RETURNS tool[] AS $$
DECLARE
    tools tool[];
BEGIN
    SELECT toolList INTO tools
    FROM tool_catalog
    WHERE id = p_sculptor.toolCatalog_id;
    RETURN tools;
END;
$$ LANGUAGE plpgsql;

-- 3. Отримання інформації про освітлення
CREATE OR REPLACE FUNCTION get_info(p_lighting lighting)
RETURNS TEXT AS $$
BEGIN
    RETURN CONCAT('Lighting Intensity: ', p_lighting.intensity, ', Status: ', p_lighting.status);
END;
$$ LANGUAGE plpgsql;

-- 4. Перевірка статусу освітлення
CREATE OR REPLACE FUNCTION check_status(p_lighting lighting)
RETURNS BOOLEAN AS $$
BEGIN
    RETURN p_lighting.status = 'Active';
END;
$$ LANGUAGE plpgsql;

-- 5. Надання рекомендацій щодо освітлення
CREATE OR REPLACE FUNCTION provide_recommendations(p_lighting lighting)
RETURNS TEXT AS $$
BEGIN
    RETURN 'Adjust lighting for optimal performance.';
END;
$$ LANGUAGE plpgsql;

-- 6. Сповіщення про налаштування освітлення
CREATE OR REPLACE FUNCTION notify_adjustments(p_adjustment lighting_adjustment)
RETURNS VOID AS $$
BEGIN
    RAISE NOTICE 'Adjustment Type: %, Time: %', p_adjustment.adjustmentType, p_adjustment.adjustmentTime;
END;
$$ LANGUAGE plpgsql;

-- 7. Запис налаштувань освітлення
CREATE OR REPLACE FUNCTION record_adjustments(p_adjustment lighting_adjustment)
RETURNS VOID AS $$
BEGIN
    RAISE NOTICE 'Recorded adjustment: %, at time: %', p_adjustment.adjustmentType, p_adjustment.adjustmentTime;
END;
$$ LANGUAGE plpgsql;

-- 8. Надання інструкцій щодо інструменту
CREATE OR REPLACE FUNCTION provide_instructions(p_tool tool)
RETURNS TEXT AS $$
BEGIN
    RETURN CONCAT('Tool: ', p_tool.name, ', Instructions: ', p_tool.description);
END;
$$ LANGUAGE plpgsql;

-- 9. Перегляд інструментів у каталозі
CREATE OR REPLACE FUNCTION browse_tools(p_catalog tool_catalog)
RETURNS tool[] AS $$
BEGIN
    RETURN p_catalog.toolList;
END;
$$ LANGUAGE plpgsql;

-- 10. Додавання інструменту в кошик
CREATE OR REPLACE FUNCTION add_tool(p_cart cart, p_tool tool)
RETURNS cart AS $$
BEGIN
    p_cart.selectedTools := array_append(p_cart.selectedTools, p_tool);
    RETURN p_cart;
END;
$$ LANGUAGE plpgsql;

-- 11. Підтвердження замовлення
CREATE OR REPLACE FUNCTION confirm_order(p_order order)
RETURNS BOOLEAN AS $$
BEGIN
    UPDATE order
    SET confirmation = TRUE
    WHERE id = p_order.id;
    RETURN TRUE;
END;
$$ LANGUAGE plpgsql;

-- 12. Обробка замовлення
CREATE OR REPLACE FUNCTION process_order(p_delivery delivery)
RETURNS VOID AS $$
BEGIN
    RAISE NOTICE 'Order processed with delivery terms: %', p_delivery.deliveryTerms;
END;
$$ LANGUAGE plpgsql;
