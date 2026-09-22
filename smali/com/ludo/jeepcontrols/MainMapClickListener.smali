.class public final Lcom/ludo/jeepcontrols/MainMapClickListener;
.super Ljava/lang/Object;
.source "MainMapClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ludo/jeepcontrols/MainMapClickListener;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/ludo/jeepcontrols/MainMapClickListener;->context:Landroid/content/Context;

    const-string v2, "Lock"

    invoke-static {v0, v2}, Lcom/ludo/jeepcontrols/CommandReceiver;->performCommandHaptic(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ludo/jeepcontrols/UconnectMapLauncher;->open(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ludo/jeepcontrols/JeepMapLauncher;->open(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "No Uconnect location yet \u2014 press REFRESH first"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
