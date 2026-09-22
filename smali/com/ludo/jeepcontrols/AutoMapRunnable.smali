.class public final Lcom/ludo/jeepcontrols/AutoMapRunnable;
.super Ljava/lang/Object;
.source "AutoMapRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final service:Lcom/ludo/jeepcontrols/ClimateAccessibilityService;


# direct methods
.method public constructor <init>(Lcom/ludo/jeepcontrols/ClimateAccessibilityService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ludo/jeepcontrols/AutoMapRunnable;->service:Lcom/ludo/jeepcontrols/ClimateAccessibilityService;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/ludo/jeepcontrols/AutoMapRunnable;->service:Lcom/ludo/jeepcontrols/ClimateAccessibilityService;

    invoke-virtual {v0}, Lcom/ludo/jeepcontrols/ClimateAccessibilityService;->runMapAutomation()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ludo/jeepcontrols/AutoMapHelper;->isArmed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/ludo/jeepcontrols/AutoMapRunnable;

    invoke-direct {v2, v0}, Lcom/ludo/jeepcontrols/AutoMapRunnable;-><init>(Lcom/ludo/jeepcontrols/ClimateAccessibilityService;)V

    const-wide/16 v3, 0x2bc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
