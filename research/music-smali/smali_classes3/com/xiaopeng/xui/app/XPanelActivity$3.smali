.class Lcom/xiaopeng/xui/app/XPanelActivity$3;
.super Landroid/database/ContentObserver;
.source "XPanelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/XPanelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/app/XPanelActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/app/XPanelActivity;Landroid/os/Handler;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity$3;->this$0:Lcom/xiaopeng/xui/app/XPanelActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 282
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 283
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity$3;->this$0:Lcom/xiaopeng/xui/app/XPanelActivity;

    invoke-static {p1}, Lcom/xiaopeng/xui/app/XPanelActivity;->access$100(Lcom/xiaopeng/xui/app/XPanelActivity;)V

    return-void
.end method
