codeunit 90300 "Sales Order Processor"
{
    procedure ProcessOrder(var SalesHeader: Record "Sales Header")
    begin
        // Business logic before the event
        ValidateOrder(SalesHeader);

        // Raise the event so others can react
        OnAfterValidateSalesOrder(SalesHeader);

        // Continue with more logic
        // ...
    end;

    local procedure ValidateOrder(var SalesHeader: Record "Sales Header")
    begin
        // Core validation logic
    end;

    // Integration event — other apps can subscribe to this
    [IntegrationEvent(false, false)]
    local procedure OnAfterValidateSalesOrder(var SalesHeader: Record "Sales Header")
    begin
    end;
}