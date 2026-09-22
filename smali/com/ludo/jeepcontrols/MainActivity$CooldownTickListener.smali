.class public final Lcom/ludo/jeepcontrols/MainActivity$CooldownTickListener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/Chronometer$OnChronometerTickListener;


# instance fields
.field private final activity:Lcom/ludo/jeepcontrols/MainActivity;


# direct methods
.method public constructor <init>(Lcom/ludo/jeepcontrols/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ludo/jeepcontrols/MainActivity$CooldownTickListener;->activity:Lcom/ludo/jeepcontrols/MainActivity;

    return-void
.end method


# virtual methods
.method public onChronometerTick(Landroid/widget/Chronometer;)V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/Chronometer;->stop()V

    const-string v0, "Ready for next command \u2713"

    invoke-virtual {p1, v0}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
