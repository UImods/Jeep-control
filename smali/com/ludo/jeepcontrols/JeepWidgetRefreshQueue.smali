.class public final Lcom/ludo/jeepcontrols/JeepWidgetRefreshQueue;
.super Ljava/lang/Object;
.source "JeepWidgetRefreshQueue.java"


# static fields
.field static final DIRTY:Ljava/util/concurrent/atomic/AtomicBoolean;

.field static final EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field static final SCHEDULED:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/ludo/jeepcontrols/JeepWidgetRefreshQueue;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/ludo/jeepcontrols/JeepWidgetRefreshQueue;->SCHEDULED:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/ludo/jeepcontrols/JeepWidgetRefreshQueue;->DIRTY:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static request(Landroid/content/Context;)V
    .locals 5

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    sget-object v1, Lcom/ludo/jeepcontrols/JeepWidgetRefreshQueue;->DIRTY:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v1, Lcom/ludo/jeepcontrols/JeepWidgetRefreshQueue;->SCHEDULED:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/ludo/jeepcontrols/JeepWidgetRefreshQueue$RefreshRunnable;

    invoke-direct {v1, v0}, Lcom/ludo/jeepcontrols/JeepWidgetRefreshQueue$RefreshRunnable;-><init>(Landroid/content/Context;)V

    :try_start_0
    sget-object v4, Lcom/ludo/jeepcontrols/JeepWidgetRefreshQueue;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v4

    :try_start_1
    new-instance v4, Ljava/lang/Thread;

    const-string p0, "JeepWidgetRefresh"

    invoke-direct {v4, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    return-void
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v4

    sget-object v1, Lcom/ludo/jeepcontrols/JeepWidgetRefreshQueue;->SCHEDULED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void
.end method
