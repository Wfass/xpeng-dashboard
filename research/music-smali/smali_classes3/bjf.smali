.class public Lbjf;
.super Lcom/xiaopeng/musicradio/commonui/adapter/h;
.source "AreaSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbjf$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/adapter/h<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private g:Landroid/content/Context;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    sget v0, Lbez$f;->singer_select_item_area:I

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lbjf;->h:I

    return-void
.end method

.method static synthetic a(Lbjf;I)I
    .locals 0

    .line 21
    iput p1, p0, Lbjf;->h:I

    return p1
.end method

.method static synthetic a(Lbjf;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;
    .locals 0

    .line 21
    iget-object p0, p0, Lbjf;->a:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lbjf$a;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lbjf;->c()Landroid/view/View;

    move-result-object p1

    .line 35
    new-instance p2, Lbjf$a;

    invoke-direct {p2, p0, p1}, Lbjf$a;-><init>(Lbjf;Landroid/view/View;)V

    return-object p2
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 40
    check-cast p1, Lbjf$a;

    .line 41
    invoke-virtual {p0, p2}, Lbjf;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    .line 42
    iget v1, p0, Lbjf;->h:I

    if-ne v1, p2, :cond_0

    .line 43
    invoke-static {p1}, Lbjf$a;->a(Lbjf$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setSelected(Z)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {p1}, Lbjf$a;->a(Lbjf$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setSelected(Z)V

    :goto_0
    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;->getAreaName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 48
    invoke-static {p1}, Lbjf$a;->a(Lbjf$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;->getAreaName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_1

    .line 50
    invoke-static {p1}, Lbjf$a;->a(Lbjf$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v0

    invoke-static {p1}, Lbjf$a;->a(Lbjf$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbez$g;->first_all:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiLabel(Ljava/lang/String;)V

    goto :goto_1

    .line 52
    :cond_1
    invoke-static {p1}, Lbjf$a;->a(Lbjf$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;->getAreaName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiLabel(Ljava/lang/String;)V

    .line 55
    :cond_2
    :goto_1
    iget-object v0, p0, Lbjf;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget-object v1, p1, Lbjf$a;->itemView:Landroid/view/View;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ms_areaselect_list_item_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 56
    invoke-static {p1}, Lbjf$a;->a(Lbjf$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v0

    new-instance v1, Lbjf$1;

    invoke-direct {v1, p0, p2}, Lbjf$1;-><init>(Lbjf;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p1, Lbjf$a;->itemView:Landroid/view/View;

    check-cast v0, Lcom/xiaopeng/xui/vui/VuiView;

    .line 65
    invoke-interface {v0, p2}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiPosition(I)V

    .line 66
    invoke-static {p1}, Lbjf$a;->a(Lbjf$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiPosition(I)V

    .line 67
    invoke-static {p1}, Lbjf$a;->a(Lbjf$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lbjf$a;->a(Lbjf$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XTextView;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiElementId(Ljava/lang/String;)V

    .line 69
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "defaultExecElementId"

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lbjf$a;->a(Lbjf$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XTextView;->getId()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lbjf;->a(Landroid/view/ViewGroup;I)Lbjf$a;

    move-result-object p1

    return-object p1
.end method
