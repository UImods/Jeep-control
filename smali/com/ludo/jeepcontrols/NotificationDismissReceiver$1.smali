.class final Lcom/ludo/jeepcontrols/NotificationDismissReceiver$1;
.super Ljava/lang/Object;
.source "NotificationDismissReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ctx:Landroid/content/Context;

.field private final pending:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ludo/jeepcontrols/NotificationDismissReceiver$1;->ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/ludo/jeepcontrols/NotificationDismissReceiver$1;->pending:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/ludo/jeepcontrols/NotificationDismissReceiver$1;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ludo/jeepcontrols/NotificationHelper;->update(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/ludo/jeepcontrols/NotificationDismissReceiver$1;->pending:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method
