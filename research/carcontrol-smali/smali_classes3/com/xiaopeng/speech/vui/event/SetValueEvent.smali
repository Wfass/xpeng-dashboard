.class public Lcom/xiaopeng/speech/vui/event/SetValueEvent;
.super Lcom/xiaopeng/speech/vui/event/BaseEvent;
.source "SetValueEvent.java"


# instance fields
.field private elementId:Ljava/lang/String;

.field private mSceneId:Ljava/lang/String;

.field private mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mVuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/event/BaseEvent;-><init>()V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->value:I

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->elementId:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->mVuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 103
    new-instance v1, Lcom/xiaopeng/speech/vui/event/SetValueEvent$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/vui/event/SetValueEvent$1;-><init>(Lcom/xiaopeng/speech/vui/event/SetValueEvent;)V

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 161
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->mSceneId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/speech/vui/event/SetValueEvent;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->value:I

    return p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/speech/vui/event/SetValueEvent;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->elementId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/speech/vui/event/SetValueEvent;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->findActionView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/speech/vui/event/SetValueEvent;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->mSceneId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/xiaopeng/speech/vui/event/SetValueEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->mSceneId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/speech/vui/event/SetValueEvent;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->mVuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    return-object p0
.end method

.method static synthetic access$402(Lcom/xiaopeng/speech/vui/event/SetValueEvent;Lcom/xiaopeng/vui/commons/model/VuiElement;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->mVuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    return-object p1
.end method

.method static synthetic access$500(Lcom/xiaopeng/speech/vui/event/SetValueEvent;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-object p0
.end method

.method private findActionView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 4

    .line 82
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 83
    :cond_0
    sget v0, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->executeVirtualId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 87
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 88
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 89
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 91
    invoke-direct {p0, v2, p2}, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->findActionView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method


# virtual methods
.method public performClick(Landroid/view/View;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 142
    :cond_0
    instance-of v1, p1, Lcom/xiaopeng/vui/commons/IVuiElement;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 143
    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v3, v2}, Lcom/xiaopeng/vui/commons/IVuiElement;->setPerformVuiAction(Z)V

    .line 145
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    move-result v3

    if-eqz v1, :cond_2

    .line 147
    move-object v1, p1

    check-cast v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v1, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setPerformVuiAction(Z)V

    .line 149
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClickEvent run :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/String;)V

    if-eqz v3, :cond_3

    return v2

    .line 153
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_4

    return v0

    .line 156
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->performClick(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public run(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiElement;)Landroid/view/View;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ")TT;"
        }
    .end annotation

    const-string v0, "minValue"

    const-string v1, "maxValue"

    const-string v2, "isReverse"

    const-string v3, "SetValueEvent"

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p2, :cond_9

    .line 30
    :try_start_0
    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 31
    sget-object v4, Lcom/xiaopeng/vui/commons/VuiElementType;->VIRTUALLIST:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v4}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 32
    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->elementId:Ljava/lang/String;

    const-string v4, "value"

    .line 33
    invoke-static {p2, v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getValueByName(Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    .line 34
    instance-of v5, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_8

    .line 35
    move-object v5, p1

    check-cast v5, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v5}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    .line 37
    move-object v6, p1

    check-cast v6, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v6}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 38
    move-object v5, p1

    check-cast v5, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v5}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const-string v2, "hasHeader"

    if-eqz v5, :cond_4

    .line 42
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->value:I

    .line 43
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 45
    iget v1, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->value:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->value:I

    .line 47
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->value:I

    .line 50
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reverse value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 52
    :cond_4
    move-object v1, p1

    check-cast v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 53
    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->value:I

    goto :goto_0

    .line 55
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->value:I

    .line 57
    :goto_0
    move-object v1, p1

    check-cast v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 58
    move-object v1, p1

    check-cast v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 59
    iget v1, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->value:I

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->value:I

    .line 61
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    :cond_7
    :goto_1
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 69
    iget v1, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->value:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 71
    :cond_8
    iput-object p2, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->mVuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 75
    invoke-virtual {p2}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_9
    :goto_2
    return-object p1
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->mSceneId:Ljava/lang/String;

    return-void
.end method
