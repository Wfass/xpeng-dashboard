.class public Lcom/xiaopeng/logictree/d;
.super Ljava/lang/Object;
.source "LogicTreeHelper.java"


# static fields
.field public static final XW:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-string v0, "LOGICTREE_UPGRADE_FOLDER"

    invoke-static {v0}, Lcom/xiaopeng/a/a$c;->ee(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/logictree/d;->XW:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/Integer;)V
    .locals 4

    .line 56
    const-string v0, "LogicTreeHelper"

    const-string v1, "responseResult : %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/logictree/b;

    invoke-direct {v1, p0}, Lcom/xiaopeng/logictree/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public static a(Ljava/lang/Long;)V
    .locals 4

    .line 61
    const-string v0, "LogicTreeHelper"

    const-string v1, "responseResult : %ld"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/logictree/b;

    invoke-direct {v1, p0}, Lcom/xiaopeng/logictree/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public static aR(Z)V
    .locals 0

    .line 108
    if-eqz p0, :cond_0

    .line 109
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pM()V

    .line 111
    :cond_0
    return-void
.end method

.method public static aS(Z)V
    .locals 0

    .line 120
    if-eqz p0, :cond_0

    .line 121
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pN()V

    .line 123
    :cond_0
    return-void
.end method

.method public static d([I)V
    .locals 5

    .line 66
    const-string v0, "LogicTreeHelper"

    const-string v1, "responseResult : %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/logictree/b;

    invoke-direct {v1, p0}, Lcom/xiaopeng/logictree/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public static dT(Ljava/lang/String;)V
    .locals 4

    .line 51
    const-string v0, "LogicTreeHelper"

    const-string v1, "responseResult : %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/logictree/b;

    invoke-direct {v1, p0}, Lcom/xiaopeng/logictree/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public static g([Ljava/lang/String;)V
    .locals 5

    .line 71
    const-string v0, "LogicTreeHelper"

    const-string v1, "responseResult : %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/logictree/b;

    invoke-direct {v1, p0}, Lcom/xiaopeng/logictree/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public static pM()V
    .locals 3

    .line 76
    const-string v0, "LogicTreeHelper"

    const-string v1, "responseResult : LOGIC_ACTION_RESPONSE_RESULT_FAIL"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/logictree/b;

    const-string v2, "LOGIC_ACTION_RESPONSE_RESULT_FAIL"

    invoke-direct {v1, v2}, Lcom/xiaopeng/logictree/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public static pN()V
    .locals 3

    .line 86
    const-string v0, "LogicTreeHelper"

    const-string v1, "responseResult : LOGIC_ACTION_RESPONSE_RESULT_OK"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/logictree/b;

    const-string v2, "LOGIC_ACTION_RESPONSE_RESULT_OK"

    invoke-direct {v1, v2}, Lcom/xiaopeng/logictree/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public static pO()V
    .locals 3

    .line 91
    const-string v0, "LogicTreeHelper"

    const-string v1, "responseResult : LOGIC_ACTION_RESPONSE_EXEC_NO_RESULT"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/logictree/b;

    const-string v2, "LOGIC_ACTION_RESPONSE_EXEC_NO_RESULT"

    invoke-direct {v1, v2}, Lcom/xiaopeng/logictree/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 93
    return-void
.end method
