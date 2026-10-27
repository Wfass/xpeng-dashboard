.class public Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CustomKeyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$OnItemCheckedListener;,
        Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$CustomKeyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$CustomKeyViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final FAST_CHANGE_POSITION_INTERVAL:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "CustomKeyAdapter"


# instance fields
.field private mCheckedChangeListener:Lcom/xiaopeng/xui/widget/toggle/XToggleLayout$OnCheckedChangeListener;

.field private mLastSetPositionTime:J

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$OnItemCheckedListener;

.field private mPosition:I

.field private titleId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->mList:Ljava/util/List;

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->mPosition:I

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->mLastSetPositionTime:J

    .line 36
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$1;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->mCheckedChangeListener:Lcom/xiaopeng/xui/widget/toggle/XToggleLayout$OnCheckedChangeListener;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$OnItemCheckedListener;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "listener",
            "titleId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$OnItemCheckedListener;",
            "I)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->mList:Ljava/util/List;

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->mPosition:I

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->mLastSetPositionTime:J

    .line 36
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$1;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->mCheckedChangeListener:Lcom/xiaopeng/xui/widget/toggle/XToggleLayout$OnCheckedChangeListener;

    .line 55
    iput p3, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->titleId:I

    .line 56
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->mList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->mListener:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$OnItemCheckedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;Landroid/view/View;)Z
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->isVuiAction(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private initVui(Landroid/view/View;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "position"
        }
    .end annotation

    .line 163
    instance-of v0, p1, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v0, :cond_0

    .line 164
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/vui/commons/IVuiElement;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiLabel(Ljava/lang/String;)V

    .line 165
    invoke-interface {v0, p2}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiPosition(I)V

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiElementId(Ljava/lang/String;)V

    .line 167
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->titleId:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiFatherElementId(Ljava/lang/String;)V

    const-string p1, "SetCheck"

    .line 168
    invoke-interface {v0, p1}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiAction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private isVuiAction(Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 173
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->isVuiAction(Landroid/view/View;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public addItem(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "item",
            "index"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->getItemCount()I

    move-result v0

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 117
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->notifyItemInserted(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public decrease()V
    .locals 2

    .line 108
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->mPosition:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    .line 109
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->setPosition(IZ)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public increase()V
    .locals 2

    .line 103
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    .line 104
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->setPosition(IZ)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 26
    check-cast p1, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$CustomKeyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->onBindViewHolder(Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$CustomKeyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$CustomKeyViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 138
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$CustomKeyViewHolder;->access$100(Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$CustomKeyViewHolder;)Lcom/xiaopeng/xui/widget/toggle/XTextToggle;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->setVuiLabel(Ljava/lang/String;)V

    .line 139
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$CustomKeyViewHolder;->access$100(Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$CustomKeyViewHolder;)Lcom/xiaopeng/xui/widget/toggle/XTextToggle;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->setTextOn(Ljava/lang/CharSequence;)V

    .line 140
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$CustomKeyViewHolder;->access$100(Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$CustomKeyViewHolder;)Lcom/xiaopeng/xui/widget/toggle/XTextToggle;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->setTextOff(Ljava/lang/CharSequence;)V

    .line 141
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$CustomKeyViewHolder;->access$100(Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$CustomKeyViewHolder;)Lcom/xiaopeng/xui/widget/toggle/XTextToggle;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->setTag(Ljava/lang/Object;)V

    .line 142
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$CustomKeyViewHolder;->access$100(Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$CustomKeyViewHolder;)Lcom/xiaopeng/xui/widget/toggle/XTextToggle;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->mPosition:I

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->setChecked(Z)V

    .line 143
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$CustomKeyViewHolder;->access$100(Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$CustomKeyViewHolder;)Lcom/xiaopeng/xui/widget/toggle/XTextToggle;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->initVui(Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$CustomKeyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$CustomKeyViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 131
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$layout;->custom_key_btn:I

    const/4 v1, 0x0

    .line 132
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 133
    new-instance p2, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$CustomKeyViewHolder;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->mCheckedChangeListener:Lcom/xiaopeng/xui/widget/toggle/XToggleLayout$OnCheckedChangeListener;

    invoke-direct {p2, p1, v0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$CustomKeyViewHolder;-><init>(Landroid/view/View;Lcom/xiaopeng/xui/widget/toggle/XToggleLayout$OnCheckedChangeListener;)V

    return-object p2
.end method

.method public removeItem(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 125
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->notifyItemRemoved(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPosition(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "isClick"
        }
    .end annotation

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->setSelect(IZZ)V

    return-void
.end method

.method public setSelect(IZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "isClick",
            "fromVui"
        }
    .end annotation

    const-string v0, "CustomKeyAdapter"

    if-ltz p1, :cond_5

    .line 68
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPosition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lastPosition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->mPosition:I

    .line 75
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->mPosition:I

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 78
    iget-wide v4, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->mLastSetPositionTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    const-string/jumbo p2, "setPosition : change position fast, notify all item"

    .line 79
    invoke-static {v0, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 83
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->notifyItemChanged(I)V

    :cond_2
    if-ltz v1, :cond_3

    .line 85
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->mList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_3

    .line 86
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->notifyItemChanged(I)V

    .line 89
    :cond_3
    :goto_0
    iput-wide v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->mLastSetPositionTime:J

    if-nez p3, :cond_4

    .line 91
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->mListener:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$OnItemCheckedListener;

    if-eqz p2, :cond_4

    .line 92
    invoke-interface {p2, p1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$OnItemCheckedListener;->onItemChecked(I)V

    :cond_4
    return-void

    .line 69
    :cond_5
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setPosition : Error position : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
