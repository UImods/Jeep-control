.class final Lcom/ludo/jeepcontrols/JeepWidgetRefreshQueue$RefreshRunnable;
.super Ljava/lang/Object;
.source "JeepWidgetRefreshQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ludo/jeepcontrols/JeepWidgetRefreshQueue$RefreshRunnable;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :cond_0
    sget-object v0, Lcom/ludo/jeepcontrols/JeepWidgetRefreshQueue;->DIRTY:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/ludo/jeepcontrols/JeepWidgetRefreshQueue$RefreshRunnable;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->refreshAllNow(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    sget-object v0, Lcom/ludo/jeepcontrols/JeepWidgetRefreshQueue;->DIRTY:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    sget-object v0, Lcom/ludo/jeepcontrols/JeepWidgetRefreshQueue;->SCHEDULED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/ludo/jeepcontrols/JeepWidgetRefreshQueue;->DIRTY:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/ludo/jeepcontrols/JeepWidgetRefreshQueue$RefreshRunnable;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/ludo/jeepcontrols/JeepWidgetRefreshQueue;->request(Landroid/content/Context;)V

    :cond_2
    return-void
.end method
