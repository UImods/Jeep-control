.class final Lcom/ludo/jeepcontrols/NotificationCommandQueue$CommandRunnable;
.super Ljava/lang/Object;
.source "NotificationCommandQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final context:Landroid/content/Context;

.field private final enqueuedAt:J

.field private final label:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final pendingResult:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ludo/jeepcontrols/NotificationCommandQueue$CommandRunnable;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/ludo/jeepcontrols/NotificationCommandQueue$CommandRunnable;->path:Ljava/lang/String;

    iput-object p3, p0, Lcom/ludo/jeepcontrols/NotificationCommandQueue$CommandRunnable;->label:Ljava/lang/String;

    iput-object p4, p0, Lcom/ludo/jeepcontrols/NotificationCommandQueue$CommandRunnable;->pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-static {}, Lcom/ludo/jeepcontrols/PerformanceTrace203;->start()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ludo/jeepcontrols/NotificationCommandQueue$CommandRunnable;->enqueuedAt:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/ludo/jeepcontrols/NotificationCommandQueue$CommandRunnable;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/ludo/jeepcontrols/NotificationCommandQueue$CommandRunnable;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/ludo/jeepcontrols/NotificationCommandQueue$CommandRunnable;->label:Ljava/lang/String;

    iget-object v3, p0, Lcom/ludo/jeepcontrols/NotificationCommandQueue$CommandRunnable;->pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iget-wide v4, p0, Lcom/ludo/jeepcontrols/NotificationCommandQueue$CommandRunnable;->enqueuedAt:J

    const-string v6, "NQ"

    invoke-static {v0, v6, v4, v5}, Lcom/ludo/jeepcontrols/PerformanceTrace203;->finish(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {}, Lcom/ludo/jeepcontrols/PerformanceTrace203;->start()J

    move-result-wide v4

    invoke-static {v0, v1, v2, v3}, Lcom/ludo/jeepcontrols/CommandReceiver;->lambda$onReceive$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V

    const-string v6, "NW"

    invoke-static {v0, v6, v4, v5}, Lcom/ludo/jeepcontrols/PerformanceTrace203;->finish(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method
