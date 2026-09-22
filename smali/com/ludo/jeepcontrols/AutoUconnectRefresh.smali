.class public final Lcom/ludo/jeepcontrols/AutoUconnectRefresh;
.super Ljava/lang/Object;
.source "AutoUconnectRefresh.java"


# static fields
.field static final RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/ludo/jeepcontrols/AutoUconnectRefresh;->RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static finish()V
    .locals 2

    sget-object v0, Lcom/ludo/jeepcontrols/AutoUconnectRefresh;->RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static request(Landroid/app/Activity;)V
    .locals 5

    invoke-static {p0}, Lcom/ludo/jeepcontrols/UconnectCredentialStore;->hasCredentials(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "setup"

    invoke-static {p0, v0}, Lcom/ludo/jeepcontrols/AutoUconnectRefresh;->setState(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/DashboardBinder;->bind(Landroid/app/Activity;)V

    return-void

    :cond_0
    const-string v0, "connecting"

    invoke-static {p0, v0}, Lcom/ludo/jeepcontrols/AutoUconnectRefresh;->setState(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/ludo/jeepcontrols/DashboardBinder;->bind(Landroid/app/Activity;)V

    sget-object v1, Lcom/ludo/jeepcontrols/AutoUconnectRefresh;->RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ludo/jeepcontrols/AutoUconnectRefresh$Worker;

    invoke-direct {v2, p0}, Lcom/ludo/jeepcontrols/AutoUconnectRefresh$Worker;-><init>(Landroid/app/Activity;)V

    const-string v3, "UconnectAutoRefresh"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static setState(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "jeep_controls_vehicle"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "uconnect_connection_state"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
