.class final Lcom/xiaopeng/xui/vui/a/b$1;
.super Ljava/lang/Object;
.source "VuiViewUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/vui/a/b;->a(Lcom/xiaopeng/vui/commons/a;Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic acI:Lcom/xiaopeng/vui/commons/a;

.field final synthetic acJ:Lcom/xiaopeng/vui/commons/VuiUpdateType;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/xiaopeng/vui/commons/a;Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/a/b$1;->acI:Lcom/xiaopeng/vui/commons/a;

    iput-object p2, p0, Lcom/xiaopeng/xui/vui/a/b$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/xiaopeng/xui/vui/a/b$1;->acJ:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/a/b$1;->acI:Lcom/xiaopeng/vui/commons/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/a/b$1;->val$view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/a/b$1;->acI:Lcom/xiaopeng/vui/commons/a;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/a/b$1;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/xiaopeng/xui/vui/a/b$1;->acJ:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/vui/commons/a;->onVuiElementChaned(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    .line 119
    :cond_0
    return-void
.end method
