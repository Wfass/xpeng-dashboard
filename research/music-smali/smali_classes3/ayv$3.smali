.class final Layv$3;
.super Ljava/lang/Object;
.source "NetRadioCollectManagerProxy.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layv;->a(Lbdo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 0

    const/4 p2, 0x0

    .line 161
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButtonEnable(Z)Lcom/xiaopeng/xui/app/XDialog;

    return-void
.end method
