.class public final Lcom/ludo/jeepcontrols/MainRefreshClickListener;
.super Ljava/lang/Object;
.source "MainRefreshClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final activity:Lcom/ludo/jeepcontrols/MainActivity;


# direct methods
.method public constructor <init>(Lcom/ludo/jeepcontrols/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ludo/jeepcontrols/MainRefreshClickListener;->activity:Lcom/ludo/jeepcontrols/MainActivity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/View;->setActivated(Z)V

    iget-object v0, p0, Lcom/ludo/jeepcontrols/MainRefreshClickListener;->activity:Lcom/ludo/jeepcontrols/MainActivity;

    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Lcom/ludo/jeepcontrols/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "Refreshing live vehicle status\u2026"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ludo/jeepcontrols/MainRefreshRunnable;

    invoke-direct {v2, v0}, Lcom/ludo/jeepcontrols/MainRefreshRunnable;-><init>(Lcom/ludo/jeepcontrols/MainActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
