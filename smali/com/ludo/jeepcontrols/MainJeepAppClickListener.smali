.class public final Lcom/ludo/jeepcontrols/MainJeepAppClickListener;
.super Ljava/lang/Object;
.source "MainJeepAppClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ludo/jeepcontrols/MainJeepAppClickListener;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ludo/jeepcontrols/MainJeepAppClickListener;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ludo/jeepcontrols/JeepDataLauncher;->open(Landroid/content/Context;)Z

    return-void
.end method
