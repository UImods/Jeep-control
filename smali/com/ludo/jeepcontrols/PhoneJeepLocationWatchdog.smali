.class public final Lcom/ludo/jeepcontrols/PhoneJeepLocationWatchdog;
.super Ljava/lang/Object;
.source "PhoneJeepLocationWatchdog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final service:Lcom/ludo/jeepcontrols/PhoneJeepTrackingService;


# direct methods
.method public constructor <init>(Lcom/ludo/jeepcontrols/PhoneJeepTrackingService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ludo/jeepcontrols/PhoneJeepLocationWatchdog;->service:Lcom/ludo/jeepcontrols/PhoneJeepTrackingService;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/ludo/jeepcontrols/PhoneJeepLocationWatchdog;->service:Lcom/ludo/jeepcontrols/PhoneJeepTrackingService;

    invoke-virtual {v0}, Lcom/ludo/jeepcontrols/PhoneJeepTrackingService;->checkLocationWatchdog()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/ludo/jeepcontrols/PhoneJeepLocationWatchdog;->service:Lcom/ludo/jeepcontrols/PhoneJeepTrackingService;

    invoke-virtual {v0}, Lcom/ludo/jeepcontrols/PhoneJeepTrackingService;->scheduleLocationWatchdog()V

    return-void
.end method
