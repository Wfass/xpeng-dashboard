.class Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$9;
.super Ljava/lang/Object;
.source "SelectMenuLayout.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->showTipDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$9;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 1

    .line 428
    iget-object p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$9;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->access$402(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;Lcom/xiaopeng/musicradio/widget/f;)Lcom/xiaopeng/musicradio/widget/f;

    .line 429
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    return-void
.end method
