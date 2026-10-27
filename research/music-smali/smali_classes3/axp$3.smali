.class final Laxp$3;
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
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/f;

.field final synthetic b:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/f;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)V
    .locals 0

    .line 77
    iput-object p1, p0, Laxp$3;->a:Lcom/xiaopeng/musicradio/widget/f;

    iput-object p2, p0, Laxp$3;->b:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 1

    .line 80
    iget-object p1, p0, Laxp$3;->a:Lcom/xiaopeng/musicradio/widget/f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/f;->setNegativeButtonEnable(Z)Lcom/xiaopeng/xui/app/XDialog;

    .line 81
    iget-object p1, p0, Laxp$3;->b:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    if-eqz p1, :cond_0

    .line 82
    iget-object v0, p0, Laxp$3;->a:Lcom/xiaopeng/musicradio/widget/f;

    invoke-interface {p1, v0, p2}, Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;->onClick(Lcom/xiaopeng/xui/app/XDialog;I)V

    :cond_0
    return-void
.end method
