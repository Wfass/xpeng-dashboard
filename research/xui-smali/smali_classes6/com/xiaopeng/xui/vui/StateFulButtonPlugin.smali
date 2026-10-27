.class public Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;
.super Ljava/lang/Object;
.source "StateFulButtonPlugin.java"


# static fields
.field private static mInstance:Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;

    invoke-direct {v0}, Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;-><init>()V

    sput-object v0, Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;->mInstance:Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;

    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method private createStatefulButtonData(I[Ljava/lang/String;Lorg/json/JSONObject;Lcom/xiaopeng/xui/vui/VuiView;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "currIndex"    # I
    .param p2, "vuilabels"    # [Ljava/lang/String;
    .param p3, "props"    # Lorg/json/JSONObject;
    .param p4, "view"    # Lcom/xiaopeng/xui/vui/VuiView;

    .line 64
    if-eqz p2, :cond_2

    array-length v0, p2

    if-eqz v0, :cond_2

    instance-of v0, p4, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v0, :cond_2

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "stateNames":[Ljava/lang/String;
    if-ltz p1, :cond_2

    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_2

    .line 67
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 70
    .local v1, "states":Lorg/json/JSONArray;
    :try_start_0
    array-length v2, p2

    new-array v2, v2, [Ljava/lang/String;

    move-object v0, v2

    .line 72
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 73
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 74
    .local v3, "state":Lorg/json/JSONObject;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "stateName":Ljava/lang/String;
    aput-object v4, v0, v2

    .line 76
    aget-object v5, p2, v2

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 72
    .end local v3    # "state":Lorg/json/JSONObject;
    .end local v4    # "stateName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v2    # "i":I
    :cond_0
    const-string v2, "states"

    invoke-virtual {p3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    instance-of v2, p4, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 83
    aget-object v2, v0, p1

    move-object v3, p4

    check-cast v3, Landroid/view/View;

    invoke-interface {p4, v2, v3}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiValue(Ljava/lang/Object;Landroid/view/View;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_1
    return-object p3

    .line 86
    :catch_0
    move-exception v2

    .line 87
    .local v2, "var8":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 92
    .end local v0    # "stateNames":[Ljava/lang/String;
    .end local v1    # "states":Lorg/json/JSONArray;
    .end local v2    # "var8":Lorg/json/JSONException;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getIndexByArrays([II)I
    .locals 3
    .param p1, "arrays"    # [I
    .param p2, "data"    # I

    .line 148
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 149
    return v0

    .line 151
    :cond_0
    array-length v1, p1

    if-nez v1, :cond_1

    .line 152
    return v0

    .line 154
    :cond_1
    if-gez p2, :cond_2

    .line 155
    return v0

    .line 157
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 158
    aget v2, p1, v1

    if-ne p2, v2, :cond_3

    .line 159
    return v1

    .line 157
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    .end local v1    # "i":I
    :cond_4
    return v0
.end method

.method private getIndexByArrays([Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "arrays"    # [Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 122
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 123
    return v0

    .line 125
    :cond_0
    array-length v1, p1

    if-nez v1, :cond_1

    .line 126
    return v0

    .line 128
    :cond_1
    if-nez p2, :cond_2

    .line 129
    return v0

    .line 131
    :cond_2
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_7

    .line 132
    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    aget-object v3, p1, v2

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 133
    aget-object v3, p1, v2

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "value_lbs":[Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 135
    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 136
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 137
    return v2

    .line 135
    .end local v6    # "value":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 141
    .end local v3    # "value_lbs":[Ljava/lang/String;
    :cond_4
    goto :goto_2

    :cond_5
    aget-object v3, p1, v2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 142
    return v2

    .line 131
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    .end local v2    # "i":I
    :cond_7
    return v0
.end method

.method public static getInstance()Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;
    .locals 1

    .line 29
    sget-object v0, Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;->mInstance:Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized setStatefulButtonAttr(Lcom/xiaopeng/xui/vui/VuiView;I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Lcom/xiaopeng/xui/vui/VuiView;
    .param p2, "currIndex"    # I
    .param p3, "vuilabels"    # [Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;

    monitor-enter p0

    .line 33
    if-eqz p1, :cond_8

    if-eqz p3, :cond_8

    :try_start_0
    array-length v0, p3

    if-lez v0, :cond_8

    if-gez p2, :cond_0

    array-length v0, p3

    if-lt p2, v0, :cond_0

    goto :goto_2

    .line 34
    :cond_0
    instance-of v0, p1, Lcom/xiaopeng/vui/commons/IVuiElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    .line 35
    :cond_1
    :try_start_1
    instance-of v0, p1, Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return-void

    .line 36
    :cond_2
    move-object v0, p1

    .line 37
    .local v0, "vuiElement":Lcom/xiaopeng/vui/commons/IVuiElement;
    :try_start_2
    invoke-interface {v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v1

    .line 38
    .local v1, "obj":Lorg/json/JSONObject;
    if-nez v1, :cond_3

    .line 39
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v2

    .line 41
    :cond_3
    const/4 v2, -0x1

    if-ne p2, v2, :cond_5

    .line 42
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 43
    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    .line 44
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v3, ""

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "text":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p3, v3}, Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;->getIndexByArrays([Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 46
    .local v4, "labelIndex":I
    if-ltz v4, :cond_5

    .line 47
    move p2, v4

    .line 51
    .end local v2    # "textView":Landroid/widget/TextView;
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "labelIndex":I
    :cond_5
    invoke-direct {p0, p2, p3, v1, p1}, Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;->createStatefulButtonData(I[Ljava/lang/String;Lorg/json/JSONObject;Lcom/xiaopeng/xui/vui/VuiView;)Lorg/json/JSONObject;

    move-result-object v2

    .line 52
    .local v2, "props":Lorg/json/JSONObject;
    if-eqz v2, :cond_7

    if-eqz p1, :cond_7

    .line 53
    sget-object v3, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-interface {v0, v3}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiElementType(Lcom/xiaopeng/vui/commons/VuiElementType;)V

    .line 54
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 55
    const-string v3, "SetValue"

    invoke-interface {v0, v3}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiAction(Ljava/lang/String;)V

    goto :goto_1

    .line 57
    :cond_6
    invoke-interface {v0, p4}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiAction(Ljava/lang/String;)V

    .line 59
    :goto_1
    invoke-interface {v0, v2}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    :cond_7
    monitor-exit p0

    return-void

    .line 32
    .end local v0    # "vuiElement":Lcom/xiaopeng/vui/commons/IVuiElement;
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v2    # "props":Lorg/json/JSONObject;
    .end local p1    # "view":Lcom/xiaopeng/xui/vui/VuiView;
    .end local p2    # "currIndex":I
    .end local p3    # "vuilabels":[Ljava/lang/String;
    .end local p4    # "action":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;
    throw p1

    .line 33
    .restart local p0    # "this":Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;
    .restart local p1    # "view":Lcom/xiaopeng/xui/vui/VuiView;
    .restart local p2    # "currIndex":I
    .restart local p3    # "vuilabels":[Ljava/lang/String;
    .restart local p4    # "action":Ljava/lang/String;
    :cond_8
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setStatefulButtonValue(I[Ljava/lang/String;[ILcom/xiaopeng/xui/vui/VuiView;)V
    .locals 3
    .param p1, "currIndex"    # I
    .param p2, "vuilabels"    # [Ljava/lang/String;
    .param p3, "values"    # [I
    .param p4, "view"    # Lcom/xiaopeng/xui/vui/VuiView;

    monitor-enter p0

    .line 95
    :try_start_0
    instance-of v0, p4, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v0, :cond_7

    .line 96
    instance-of v0, p4, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 97
    move-object v0, p4

    check-cast v0, Landroid/widget/TextView;

    .line 98
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "text":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p2, v1}, Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;->getIndexByArrays([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 100
    .local v2, "labelIndex":I
    if-ltz v2, :cond_1

    .line 101
    move p1, v2

    .line 103
    .end local v0    # "textView":Landroid/widget/TextView;
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "labelIndex":I
    :cond_1
    goto :goto_1

    :cond_2
    instance-of v0, p4, Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 104
    invoke-direct {p0, p3, p1}, Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;->getIndexByArrays([II)I

    move-result v0

    .line 105
    .local v0, "valueIndex":I
    if-ltz v0, :cond_3

    .line 106
    move p1, v0

    .line 108
    .end local v0    # "valueIndex":I
    :cond_3
    goto :goto_1

    :cond_4
    instance-of v0, p4, Lcom/xiaopeng/xui/widget/slider/XSlider;

    if-eqz v0, :cond_5

    .line 109
    move-object v0, p4

    check-cast v0, Lcom/xiaopeng/xui/widget/slider/XSlider;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getVuiCurrentIndex()F

    move-result v0

    float-to-int p1, v0

    goto :goto_1

    .line 110
    :cond_5
    instance-of v0, p4, Lxiaopeng/widget/SimpleSlider;

    if-eqz v0, :cond_6

    .line 111
    move-object v0, p4

    check-cast v0, Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->getProgress()I

    move-result v0

    move p1, v0

    .line 113
    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "vuiValue":Ljava/lang/String;
    invoke-interface {p4}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiValue()Ljava/lang/Object;

    move-result-object v1

    .line 115
    .local v1, "currVuiValue":Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    instance-of v2, p4, Landroid/view/View;

    if-eqz v2, :cond_7

    .line 116
    move-object v2, p4

    check-cast v2, Landroid/view/View;

    invoke-interface {p4, v0, v2}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiValue(Ljava/lang/Object;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .end local v0    # "vuiValue":Ljava/lang/String;
    .end local v1    # "currVuiValue":Ljava/lang/Object;
    :cond_7
    monitor-exit p0

    return-void

    .line 94
    .end local p1    # "currIndex":I
    .end local p2    # "vuilabels":[Ljava/lang/String;
    .end local p3    # "values":[I
    .end local p4    # "view":Lcom/xiaopeng/xui/vui/VuiView;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;
    throw p1
.end method
