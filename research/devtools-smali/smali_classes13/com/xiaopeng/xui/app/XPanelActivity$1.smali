.class Lcom/xiaopeng/xui/app/XPanelActivity$1;
.super Ljava/lang/Object;
.source "XPanelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/XPanelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aap:Lcom/xiaopeng/xui/app/XPanelActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/app/XPanelActivity;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity$1;->aap:Lcom/xiaopeng/xui/app/XPanelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity$1;->aap:Lcom/xiaopeng/xui/app/XPanelActivity;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPanelActivity;->a(Lcom/xiaopeng/xui/app/XPanelActivity;)V

    .line 40
    return-void
.end method
