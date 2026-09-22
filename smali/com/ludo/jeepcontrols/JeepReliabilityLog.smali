.class public final Lcom/ludo/jeepcontrols/JeepReliabilityLog;
.super Ljava/lang/Object;
.source "JeepReliabilityLog.java"


# static fields
.field public static final TAG_ANCHOR:Ljava/lang/String; = "JC/Anchor"

.field public static final TAG_COMMAND:Ljava/lang/String; = "JC/Command"

.field public static final TAG_DISTANCE:Ljava/lang/String; = "JC/Distance"

.field public static final TAG_HAPTIC:Ljava/lang/String; = "JC/Haptic"

.field public static final TAG_LOCAL_TRIP:Ljava/lang/String; = "JC/LocalTrip"

.field public static final TAG_NOTIFICATION_RENDER:Ljava/lang/String; = "JC/NotificationRender"

.field public static final TAG_NOTIF_ACTION:Ljava/lang/String; = "JC/NotifAction"

.field public static final TAG_STATE_MERGE:Ljava/lang/String; = "JC/StateMerge"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commandAccepted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "commandId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " phase=ACCEPTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JC/Command"

    invoke-static {v1, v0}, Lcom/ludo/jeepcontrols/JeepReliabilityLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static newCommandId()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v0, "unknown"

    return-object v0
.end method
