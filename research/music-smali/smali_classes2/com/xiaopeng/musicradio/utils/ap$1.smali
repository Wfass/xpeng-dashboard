.class final Lcom/xiaopeng/musicradio/utils/ap$1;
.super Ljava/lang/Object;
.source "MusicDialogUtil.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/utils/ap;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/f;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/f;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/musicradio/utils/ap$1;->a:Lcom/xiaopeng/musicradio/widget/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 0

    .line 53
    iget-object p1, p0, Lcom/xiaopeng/musicradio/utils/ap$1;->a:Lcom/xiaopeng/musicradio/widget/f;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/f;->setNegativeButtonEnable(Z)Lcom/xiaopeng/xui/app/XDialog;

    return-void
.end method
