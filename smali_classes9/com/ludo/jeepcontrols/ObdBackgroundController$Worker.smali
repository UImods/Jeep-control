.class final Lcom/ludo/jeepcontrols/ObdBackgroundController$Worker;
.super Ljava/lang/Object;
.source "ObdBackgroundController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ludo/jeepcontrols/ObdBackgroundController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Worker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ludo/jeepcontrols/ObdBackgroundController;


# direct methods
.method private constructor <init>(Lcom/ludo/jeepcontrols/ObdBackgroundController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/ludo/jeepcontrols/ObdBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/ObdBackgroundController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ludo/jeepcontrols/ObdBackgroundController;Lcom/ludo/jeepcontrols/ObdBackgroundController$1;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/ludo/jeepcontrols/ObdBackgroundController$Worker;-><init>(Lcom/ludo/jeepcontrols/ObdBackgroundController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 76
    const-string v0, "RECONNECTING"

    const-wide/16 v1, 0x5dc

    move-wide v3, v1

    .line 77
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/ludo/jeepcontrols/ObdBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/ObdBackgroundController;

    invoke-static {v5}, Lcom/ludo/jeepcontrols/ObdBackgroundController;->access$100(Lcom/ludo/jeepcontrols/ObdBackgroundController;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 79
    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/ludo/jeepcontrols/ObdBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/ObdBackgroundController;

    invoke-static {v6}, Lcom/ludo/jeepcontrols/ObdBackgroundController;->access$200(Lcom/ludo/jeepcontrols/ObdBackgroundController;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 80
    iget-object v6, p0, Lcom/ludo/jeepcontrols/ObdBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/ObdBackgroundController;

    const-string v7, "WAITING_BLUETOOTH_PERMISSION"

    invoke-static {v6, v5, v7}, Lcom/ludo/jeepcontrols/ObdBackgroundController;->access$300(Lcom/ludo/jeepcontrols/ObdBackgroundController;ZLjava/lang/String;)V

    .line 81
    const-wide/16 v6, 0x1388

    invoke-static {v6, v7}, Lcom/ludo/jeepcontrols/ObdBackgroundController;->access$400(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 105
    iget-object v6, p0, Lcom/ludo/jeepcontrols/ObdBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/ObdBackgroundController;

    invoke-static {v6}, Lcom/ludo/jeepcontrols/ObdBackgroundController;->access$1300(Lcom/ludo/jeepcontrols/ObdBackgroundController;)V

    .line 106
    iget-object v6, p0, Lcom/ludo/jeepcontrols/ObdBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/ObdBackgroundController;

    invoke-static {v6}, Lcom/ludo/jeepcontrols/ObdBackgroundController;->access$100(Lcom/ludo/jeepcontrols/ObdBackgroundController;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/ludo/jeepcontrols/ObdBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/ObdBackgroundController;

    invoke-static {v6, v5, v0}, Lcom/ludo/jeepcontrols/ObdBackgroundController;->access$300(Lcom/ludo/jeepcontrols/ObdBackgroundController;ZLjava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/ludo/jeepcontrols/ObdBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/ObdBackgroundController;

    invoke-static {v6}, Lcom/ludo/jeepcontrols/ObdBackgroundController;->access$500(Lcom/ludo/jeepcontrols/ObdBackgroundController;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    nop

    .line 86
    :try_start_2
    iget-object v3, p0, Lcom/ludo/jeepcontrols/ObdBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/ObdBackgroundController;

    invoke-static {v3}, Lcom/ludo/jeepcontrols/ObdBackgroundController;->access$600(Lcom/ludo/jeepcontrols/ObdBackgroundController;)Lcom/ludo/jeepcontrols/RfhBaselineTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ludo/jeepcontrols/RfhBaselineTracker;->reset()V

    .line 87
    iget-object v3, p0, Lcom/ludo/jeepcontrols/ObdBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/ObdBackgroundController;

    invoke-static {v3}, Lcom/ludo/jeepcontrols/ObdBackgroundController;->access$700(Lcom/ludo/jeepcontrols/ObdBackgroundController;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "obd_fob_baseline_established"

    .line 88
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "obd_gear_validation_only"

    .line 89
    const/4 v6, 0x1

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 90
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 91
    iget-object v3, p0, Lcom/ludo/jeepcontrols/ObdBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/ObdBackgroundController;

    const-string v4, "ACTIVE_READ_ONLY"

    invoke-static {v3, v6, v4}, Lcom/ludo/jeepcontrols/ObdBackgroundController;->access$300(Lcom/ludo/jeepcontrols/ObdBackgroundController;ZLjava/lang/String;)V

    .line 92
    nop

    .line 93
    :goto_1
    iget-object v3, p0, Lcom/ludo/jeepcontrols/ObdBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/ObdBackgroundController;

    invoke-static {v3}, Lcom/ludo/jeepcontrols/ObdBackgroundController;->access$100(Lcom/ludo/jeepcontrols/ObdBackgroundController;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/ludo/jeepcontrols/ObdBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/ObdBackgroundController;

    invoke-static {v3}, Lcom/ludo/jeepcontrols/ObdBackgroundController;->access$800(Lcom/ludo/jeepcontrols/ObdBackgroundController;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/ludo/jeepcontrols/ObdBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/ObdBackgroundController;

    invoke-static {v3}, Lcom/ludo/jeepcontrols/ObdBackgroundController;->access$800(Lcom/ludo/jeepcontrols/ObdBackgroundController;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothSocket;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 95
    iget-object v3, p0, Lcom/ludo/jeepcontrols/ObdBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/ObdBackgroundController;

    invoke-static {v3}, Lcom/ludo/jeepcontrols/ObdBackgroundController;->access$900(Lcom/ludo/jeepcontrols/ObdBackgroundController;)V

    .line 97
    rem-int/lit8 v3, v6, 0x6

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/ludo/jeepcontrols/ObdBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/ObdBackgroundController;

    invoke-static {v3}, Lcom/ludo/jeepcontrols/ObdBackgroundController;->access$1000(Lcom/ludo/jeepcontrols/ObdBackgroundController;)V

    .line 98
    :cond_2
    rem-int/lit8 v3, v6, 0x18

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/ludo/jeepcontrols/ObdBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/ObdBackgroundController;

    invoke-static {v3}, Lcom/ludo/jeepcontrols/ObdBackgroundController;->access$1100(Lcom/ludo/jeepcontrols/ObdBackgroundController;)V

    .line 99
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 100
    const-wide/16 v3, 0x578

    invoke-static {v3, v4}, Lcom/ludo/jeepcontrols/ObdBackgroundController;->access$400(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 105
    :cond_4
    iget-object v3, p0, Lcom/ludo/jeepcontrols/ObdBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/ObdBackgroundController;

    invoke-static {v3}, Lcom/ludo/jeepcontrols/ObdBackgroundController;->access$1300(Lcom/ludo/jeepcontrols/ObdBackgroundController;)V

    .line 106
    iget-object v3, p0, Lcom/ludo/jeepcontrols/ObdBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/ObdBackgroundController;

    invoke-static {v3}, Lcom/ludo/jeepcontrols/ObdBackgroundController;->access$100(Lcom/ludo/jeepcontrols/ObdBackgroundController;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/ludo/jeepcontrols/ObdBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/ObdBackgroundController;

    invoke-static {v3, v5, v0}, Lcom/ludo/jeepcontrols/ObdBackgroundController;->access$300(Lcom/ludo/jeepcontrols/ObdBackgroundController;ZLjava/lang/String;)V

    .line 108
    :cond_5
    move-wide v3, v1

    goto :goto_3

    .line 102
    :catchall_0
    move-exception v6

    move-wide v3, v1

    goto :goto_2

    :catchall_1
    move-exception v6

    .line 103
    :goto_2
    :try_start_3
    iget-object v7, p0, Lcom/ludo/jeepcontrols/ObdBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/ObdBackgroundController;

    invoke-static {v7, v6}, Lcom/ludo/jeepcontrols/ObdBackgroundController;->access$1200(Lcom/ludo/jeepcontrols/ObdBackgroundController;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 105
    iget-object v6, p0, Lcom/ludo/jeepcontrols/ObdBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/ObdBackgroundController;

    invoke-static {v6}, Lcom/ludo/jeepcontrols/ObdBackgroundController;->access$1300(Lcom/ludo/jeepcontrols/ObdBackgroundController;)V

    .line 106
    iget-object v6, p0, Lcom/ludo/jeepcontrols/ObdBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/ObdBackgroundController;

    invoke-static {v6}, Lcom/ludo/jeepcontrols/ObdBackgroundController;->access$100(Lcom/ludo/jeepcontrols/ObdBackgroundController;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/ludo/jeepcontrols/ObdBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/ObdBackgroundController;

    invoke-static {v6, v5, v0}, Lcom/ludo/jeepcontrols/ObdBackgroundController;->access$300(Lcom/ludo/jeepcontrols/ObdBackgroundController;ZLjava/lang/String;)V

    .line 108
    :cond_6
    :goto_3
    iget-object v5, p0, Lcom/ludo/jeepcontrols/ObdBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/ObdBackgroundController;

    invoke-static {v5}, Lcom/ludo/jeepcontrols/ObdBackgroundController;->access$100(Lcom/ludo/jeepcontrols/ObdBackgroundController;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    invoke-static {v3, v4}, Lcom/ludo/jeepcontrols/ObdBackgroundController;->access$400(J)V

    .line 110
    const-wide/16 v5, 0x2

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x7530

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    goto/16 :goto_0

    .line 105
    :catchall_2
    move-exception v1

    iget-object v2, p0, Lcom/ludo/jeepcontrols/ObdBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/ObdBackgroundController;

    invoke-static {v2}, Lcom/ludo/jeepcontrols/ObdBackgroundController;->access$1300(Lcom/ludo/jeepcontrols/ObdBackgroundController;)V

    .line 106
    iget-object v2, p0, Lcom/ludo/jeepcontrols/ObdBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/ObdBackgroundController;

    invoke-static {v2}, Lcom/ludo/jeepcontrols/ObdBackgroundController;->access$100(Lcom/ludo/jeepcontrols/ObdBackgroundController;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/ludo/jeepcontrols/ObdBackgroundController$Worker;->this$0:Lcom/ludo/jeepcontrols/ObdBackgroundController;

    invoke-static {v2, v5, v0}, Lcom/ludo/jeepcontrols/ObdBackgroundController;->access$300(Lcom/ludo/jeepcontrols/ObdBackgroundController;ZLjava/lang/String;)V

    .line 107
    :cond_7
    throw v1

    .line 113
    :cond_8
    return-void
.end method
