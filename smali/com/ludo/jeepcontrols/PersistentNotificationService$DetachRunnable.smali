.class final Lcom/ludo/jeepcontrols/PersistentNotificationService$DetachRunnable;
.super Ljava/lang/Object;
.source "PersistentNotificationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final service:Lcom/ludo/jeepcontrols/PersistentNotificationService;


# direct methods
.method public constructor <init>(Lcom/ludo/jeepcontrols/PersistentNotificationService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ludo/jeepcontrols/PersistentNotificationService$DetachRunnable;->service:Lcom/ludo/jeepcontrols/PersistentNotificationService;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/ludo/jeepcontrols/PersistentNotificationService$DetachRunnable;->service:Lcom/ludo/jeepcontrols/PersistentNotificationService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method
