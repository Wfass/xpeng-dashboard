.class final Laxp$4;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laxp;->a(Landroid/content/Context;Lcom/xiaopeng/musicradio/utils/ca;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)V
    .locals 0

    .line 68
    iput-object p1, p0, Laxp$4;->a:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButtonEnable(Z)Lcom/xiaopeng/xui/app/XDialog;

    .line 72
    iget-object v0, p0, Laxp$4;->a:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;->onClick(Lcom/xiaopeng/xui/app/XDialog;I)V

    :cond_0
    return-void
.end method
