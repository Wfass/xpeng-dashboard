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

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createStatefulButtonData(I[Ljava/lang/String;Lorg/json/JSONObject;Lcom/xiaopeng/xui/vui/VuiView;)Lorg/json/JSONObject;
    .locals 6

    if-eqz p2, :cond_2

    .line 64
    array-length v0, p2

    if-eqz v0, :cond_2

    instance-of v0, p4, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    .line 66
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_2

    .line 67
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 70
    :try_start_0
    array-length v1, p2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 72
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 73
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 75
    aput-object v4, v1, v2

    .line 76
    aget-object v2, p2, v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move v2, v5

    goto :goto_0

    :cond_0
    const-string p2, "states"

    .line 80
    invoke-virtual {p3, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    instance-of p2, p4, Landroid/view/View;

    if-eqz p2, :cond_1

    .line 83
    aget-object p1, v1, p1

    move-object p2, p4

    check-cast p2, Landroid/view/View;

    invoke-interface {p4, p1, p2}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiValue(Ljava/lang/Object;Landroid/view/View;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p3

    :catch_0
    move-exception p1

    .line 87
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getIndexByArrays([II)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 151
    :cond_0
    array-length v1, p1

    if-nez v1, :cond_1

    return v0

    :cond_1
    if-gez p2, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x0

    .line 157
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 158
    aget v2, p1, v1

    if-ne p2, v2, :cond_3

    return v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method private getIndexByArrays([Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 125
    :cond_0
    array-length v1, p1

    if-nez v1, :cond_1

    return v0

    :cond_1
    if-nez p2, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x0

    move v2, v1

    .line 131
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_6

    .line 132
    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    aget-object v3, p1, v2

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 133
    aget-object v3, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 135
    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    .line 136
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    return v2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 141
    :cond_4
    aget-object v3, p1, v2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
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
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_8

    if-eqz p3, :cond_8

    .line 33
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

    .line 37
    :cond_2
    :try_start_2
    invoke-interface {p1}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_3

    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_3
    const/4 v1, -0x1

    if-ne p2, v1, :cond_5

    .line 42
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 43
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    .line 44
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v1, ""

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    :goto_0
    invoke-direct {p0, p3, v1}, Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;->getIndexByArrays([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_5

    move p2, v1

    .line 51
    :cond_5
    invoke-direct {p0, p2, p3, v0, p1}, Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;->createStatefulButtonData(I[Ljava/lang/String;Lorg/json/JSONObject;Lcom/xiaopeng/xui/vui/VuiView;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_7

    if-eqz p1, :cond_7

    .line 53
    sget-object p3, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-interface {p1, p3}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiElementType(Lcom/xiaopeng/vui/commons/VuiElementType;)V

    .line 54
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_6

    const-string p3, "SetValue"

    .line 55
    invoke-interface {p1, p3}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiAction(Ljava/lang/String;)V

    goto :goto_1

    .line 57
    :cond_6
    invoke-interface {p1, p4}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiAction(Ljava/lang/String;)V

    .line 59
    :goto_1
    invoke-interface {p1, p2}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 33
    :cond_8
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setStatefulButtonValue(I[Ljava/lang/String;[ILcom/xiaopeng/xui/vui/VuiView;)V
    .locals 1

    monitor-enter p0

    .line 95
    :try_start_0
    instance-of v0, p4, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v0, :cond_5

    .line 96
    instance-of v0, p4, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 97
    move-object p3, p4

    check-cast p3, Landroid/widget/TextView;

    .line 98
    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p3, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    .line 99
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;->getIndexByArrays([Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_4

    :goto_1
    move p1, p2

    goto :goto_2

    .line 103
    :cond_1
    instance-of p2, p4, Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    .line 104
    invoke-direct {p0, p3, p1}, Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;->getIndexByArrays([II)I

    move-result p2

    if-ltz p2, :cond_4

    goto :goto_1

    .line 108
    :cond_2
    instance-of p2, p4, Lcom/xiaopeng/xui/widget/slider/XSlider;

    if-eqz p2, :cond_3

    .line 109
    move-object p1, p4

    check-cast p1, Lcom/xiaopeng/xui/widget/slider/XSlider;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getVuiCurrentIndex()F

    move-result p1

    float-to-int p1, p1

    goto :goto_2

    .line 110
    :cond_3
    instance-of p2, p4, Lxiaopeng/widget/SimpleSlider;

    if-eqz p2, :cond_4

    .line 111
    move-object p1, p4

    check-cast p1, Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {p1}, Lxiaopeng/widget/SimpleSlider;->getProgress()I

    move-result p1

    .line 113
    :cond_4
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "state_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-interface {p4}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiValue()Ljava/lang/Object;

    move-result-object p2

    .line 115
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    instance-of p2, p4, Landroid/view/View;

    if-eqz p2, :cond_5

    .line 116
    move-object p2, p4

    check-cast p2, Landroid/view/View;

    invoke-interface {p4, p1, p2}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiValue(Ljava/lang/Object;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
