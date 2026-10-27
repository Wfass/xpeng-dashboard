.class public Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSRIconHide;
.super Lcom/xiaopeng/xuiservice/smart/action/ActionSimple;
.source "ActionSRIconHide.java"


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 10
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionSimple;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSRIconHide;->name:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method protected action()V
    .locals 2

    .line 16
    invoke-static {}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->getInstance()Lcom/xiaopeng/xuiservice/sr/XuiSrService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSRIconHide;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->hide(Ljava/lang/String;)V

    .line 17
    return-void
.end method
