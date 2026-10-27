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

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->value:I

    .line 24
    const/4 v0, 0x0

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
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    .line 22
    iget v0, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->value:I

    return v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/speech/vui/event/SetValueEvent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->elementId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/speech/vui/event/SetValueEvent;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/event/SetValueEvent;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->findActionView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/speech/vui/event/SetValueEvent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->mSceneId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/xiaopeng/speech/vui/event/SetValueEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/event/SetValueEvent;
    .param p1, "x1"    # Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->mSceneId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/speech/vui/event/SetValueEvent;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->mVuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    return-object v0
.end method

.method static synthetic access$402(Lcom/xiaopeng/speech/vui/event/SetValueEvent;Lcom/xiaopeng/vui/commons/model/VuiElement;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/event/SetValueEvent;
    .param p1, "x1"    # Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->mVuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    return-object p1
.end method

.method static synthetic access$500(Lcom/xiaopeng/speech/vui/event/SetValueEvent;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-object v0
.end method

.method private findActionView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # Ljava/lang/String;

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

    .line 84
    .local v0, "tagId":Ljava/lang/Object;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    return-object p1

    .line 87
    :cond_1
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    .line 88
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    .line 89
    .local v2, "group":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 90
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 91
    .local v4, "child":Landroid/view/View;
    invoke-direct {p0, v4, p2}, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->findActionView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 92
    return-object v4

    .line 89
    .end local v4    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    .end local v3    # "i":I
    :cond_3
    return-object v1

    .line 97
    .end local v2    # "group":Landroid/view/ViewGroup;
    :cond_4
    return-object v1
.end method


# virtual methods
.method public performClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 141
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 142
    :cond_0
    instance-of v1, p1, Lcom/xiaopeng/vui/commons/IVuiElement;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 143
    move-object v1, p1

    check-cast v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v1, v2}, Lcom/xiaopeng/vui/commons/IVuiElement;->setPerformVuiAction(Z)V

    .line 145
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    move-result v1

    .line 146
    .local v1, "issucc":Z
    instance-of v3, p1, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v3, :cond_2

    .line 147
    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v3, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setPerformVuiAction(Z)V

    .line 149
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClickEvent run :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 150
    if-eqz v1, :cond_3

    .line 151
    return v2

    .line 153
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewRootImpl;

    if-eqz v2, :cond_4

    .line 154
    return v0

    .line 156
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->performClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public run(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiElement;)Landroid/view/View;
    .locals 5
    .param p2, "vuiElement"    # Lcom/xiaopeng/vui/commons/model/VuiElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ")TT;"
        }
    .end annotation

    .line 29
    .local p1, "view":Landroid/view/View;, "TT;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_0
    if-eqz p2, :cond_9

    :try_start_0
    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 31
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->VIRTUALLIST:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 32
    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->elementId:Ljava/lang/String;

    .line 33
    const-string v0, "value"

    invoke-static {p2, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getValueByName(Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 34
    .local v0, "dValue":Ljava/lang/Double;
    instance-of v1, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_8

    .line 35
    move-object v1, p1

    check-cast v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 36
    const/4 v1, 0x0

    .line 37
    .local v1, "isReverse":Z
    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v2}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "isReverse"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v2}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "isReverse"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move v1, v2

    .line 41
    :cond_1
    if-eqz v1, :cond_4

    .line 42
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->value:I

    .line 43
    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v2}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "maxValue"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v2}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "maxValue"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 45
    .local v2, "max":I
    iget v3, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->value:I

    sub-int v3, v2, v3

    iput v3, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->value:I

    .line 47
    .end local v2    # "max":I
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v2}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "hasHeader"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 48
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->value:I

    .line 50
    :cond_3
    const-string v2, "SetValueEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reverse value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->value:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 52
    :cond_4
    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v2}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "hasHeader"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 53
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->value:I

    goto :goto_0

    .line 55
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->value:I

    .line 57
    :goto_0
    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v2}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "minValue"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 58
    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v2}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "minValue"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 59
    .local v2, "min":I
    iget v3, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->value:I

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->value:I

    .line 61
    .end local v2    # "min":I
    :cond_6
    const-string v2, "SetValueEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->value:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .end local v1    # "isReverse":Z
    :cond_7
    :goto_1
    move-object v1, p1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 69
    iget v2, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->value:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 71
    .end local v1    # "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    :cond_8
    iput-object p2, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->mVuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "dValue":Ljava/lang/Double;
    goto :goto_2

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SetValueEvent"

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 76
    :cond_9
    :goto_2
    nop

    .line 78
    :goto_3
    return-object p1
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 163
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->mSceneId:Ljava/lang/String;

    .line 164
    return-void
.end method
