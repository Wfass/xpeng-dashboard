.class public Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSRIconShow;
.super Lcom/xiaopeng/xuiservice/smart/action/ActionSimple;
.source "ActionSRIconShow.java"


# instance fields
.field private final file:Ljava/lang/String;

.field private final location:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;
    .param p3, "location"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionSimple;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSRIconShow;->name:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSRIconShow;->file:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSRIconShow;->location:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method protected action()V
    .locals 4

    .line 31
    invoke-static {}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->getInstance()Lcom/xiaopeng/xuiservice/sr/XuiSrService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSRIconShow;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSRIconShow;->file:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSRIconShow;->location:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method
