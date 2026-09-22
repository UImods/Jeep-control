.class public Lcom/ludo/jeepcontrols/WidgetS5_2x2;
.super Lcom/ludo/jeepcontrols/JeepWidgetProvider;
.source "WidgetS5_2x2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p3, v1

    const v3, 0x7f03000a

    invoke-static {p1, v3}, Lcom/ludo/jeepcontrols/JeepWidgetProvider;->buildForLayout(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
