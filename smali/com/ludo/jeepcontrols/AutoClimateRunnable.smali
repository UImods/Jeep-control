.class public final Lcom/ludo/jeepcontrols/AutoClimateRunnable;
.super Ljava/lang/Object;
.source "AutoClimateRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final service:Lcom/ludo/jeepcontrols/ClimateAccessibilityService;


# direct methods
.method public constructor <init>(Lcom/ludo/jeepcontrols/ClimateAccessibilityService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ludo/jeepcontrols/AutoClimateRunnable;->service:Lcom/ludo/jeepcontrols/ClimateAccessibilityService;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ludo/jeepcontrols/AutoClimateRunnable;->service:Lcom/ludo/jeepcontrols/ClimateAccessibilityService;

    invoke-virtual {v0}, Lcom/ludo/jeepcontrols/ClimateAccessibilityService;->runAutomation()V

    return-void
.end method
