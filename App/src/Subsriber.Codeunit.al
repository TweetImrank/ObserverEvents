codeunit 90301 "My Sales Order Subscriber"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales Order Processor", 'OnAfterValidateSalesOrder', '', false, false)]
    local procedure OnAfterValidateSalesOrder(var SalesHeader: Record "Sales Header")
    begin
        // This runs automatically when the event is raised
        Message('Order %1 was validated. Custom logic can run here.', SalesHeader."No.");

        // Example: add extra validation, logging, or modify the record
        if SalesHeader.Amount > 10000 then
            Error('Orders over 10,000 require approval.');
    end;
}