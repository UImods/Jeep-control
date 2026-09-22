.class final Lcom/ludo/jeepcontrols/PhoneJeepTrackingService$ForegroundAttachRetry;
.super Ljava/lang/Object;
.source "PhoneJeepTrackingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final attempt:I

.field private final service:Lcom/ludo/jeepcontrols/PhoneJeepTrackingService;


# direct methods
.method constructor <init>(Lcom/ludo/jeepcontrols/PhoneJeepTrackingService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ludo/jeepcontrols/PhoneJeepTrackingService$ForegroundAttachRetry;->service:Lcom/ludo/jeepcontrols/PhoneJeepTrackingService;

    iput p2, p0, Lcom/ludo/jeepcontrols/PhoneJeepTrackingService$ForegroundAttachRetry;->attempt:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ludo/jeepcontrols/PhoneJeepTrackingService$ForegroundAttachRetry;->service:Lcom/ludo/jeepcontrols/PhoneJeepTrackingService;

    iget v1, p0, Lcom/ludo/jeepcontrols/PhoneJeepTrackingService$ForegroundAttachRetry;->attempt:I

    invoke-virtual {v0, v1}, Lcom/ludo/jeepcontrols/PhoneJeepTrackingService;->tryAttachForeground(I)V

    return-void
.end method
