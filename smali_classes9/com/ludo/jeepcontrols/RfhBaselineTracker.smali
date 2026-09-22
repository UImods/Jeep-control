.class public final Lcom/ludo/jeepcontrols/RfhBaselineTracker;
.super Ljava/lang/Object;
.source "RfhBaselineTracker.java"


# instance fields
.field private baselineEstablished:Z

.field private lastState:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, "ERR:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/ludo/jeepcontrols/ObdReadOnlySignals;->classifyFob(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/ludo/jeepcontrols/RfhBaselineTracker;->baselineEstablished:Z

    if-nez v2, :cond_0

    iput-object v1, p0, Lcom/ludo/jeepcontrols/RfhBaselineTracker;->lastState:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ludo/jeepcontrols/RfhBaselineTracker;->baselineEstablished:Z

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/ludo/jeepcontrols/RfhBaselineTracker;->lastState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    iput-object v1, p0, Lcom/ludo/jeepcontrols/RfhBaselineTracker;->lastState:Ljava/lang/String;

    return-object v1

    :cond_2
    return-object v0
.end method

.method public isBaselineEstablished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ludo/jeepcontrols/RfhBaselineTracker;->baselineEstablished:Z

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ludo/jeepcontrols/RfhBaselineTracker;->lastState:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/ludo/jeepcontrols/RfhBaselineTracker;->baselineEstablished:Z

    return-void
.end method

.method public seed(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "Locked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "Unlocked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iput-object v0, p0, Lcom/ludo/jeepcontrols/RfhBaselineTracker;->lastState:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ludo/jeepcontrols/RfhBaselineTracker;->baselineEstablished:Z

    :cond_1
    return-void
.end method
