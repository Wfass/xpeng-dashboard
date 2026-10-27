.class final Lcom/xiaopeng/musicradio/utils/v$2;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/utils/v;->b(Ljava/lang/String;Ljava/lang/String;Lbdo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/f;

.field final synthetic b:Lbdo;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/f;Lbdo;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/musicradio/utils/v$2;->a:Lcom/xiaopeng/musicradio/widget/f;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/utils/v$2;->b:Lbdo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 0

    .line 72
    iget-object p1, p0, Lcom/xiaopeng/musicradio/utils/v$2;->a:Lcom/xiaopeng/musicradio/widget/f;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/f;->setPositiveButtonEnable(Z)Lcom/xiaopeng/xui/app/XDialog;

    .line 73
    invoke-static {}, Lbdx;->a()Lbdx;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/musicradio/utils/v$2;->b:Lbdo;

    invoke-virtual {p1, p2}, Lbdx;->a(Lbdo;)V

    return-void
.end method
