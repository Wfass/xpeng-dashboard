.class public Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;
.super Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;
.source "FixedFaultListFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FixedFaultListFragment"


# instance fields
.field private adapter:Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter;

.field private faultBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/carcontrol/Bean/FaultBean;",
            ">;"
        }
    .end annotation
.end field

.field private faultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private faultListView:Lcom/xiaopeng/xui/widget/XRecyclerView;

.field private result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->faultBeans:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->faultList:Ljava/util/List;

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->result:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->faultBeans:Ljava/util/List;

    return-object p0
.end method

.method private updateFaultBeans(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "faults"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->faultBeans:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 81
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "faults: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FixedFaultListFragment"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->convertJson2Array(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->faultList:Ljava/util/List;

    const/4 p1, 0x0

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->faultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->faultList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-class v1, Lcom/xiaopeng/carcontrol/Bean/FaultBean;

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/GsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/Bean/FaultBean;

    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->faultBeans:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public convertJson2Array(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 97
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 98
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 101
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method protected getRootLayoutId()I
    .locals 1

    const v0, 0x7f0d0042

    return v0
.end method

.method protected initView()V
    .locals 3

    .line 57
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 58
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 59
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->faultListView:Lcom/xiaopeng/xui/widget/XRecyclerView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 60
    new-instance v0, Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->faultBeans:Ljava/util/List;

    new-instance v2, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment$1;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter;-><init>(Ljava/util/List;Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$OnItemClickListener;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->adapter:Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter;

    .line 76
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->faultListView:Lcom/xiaopeng/xui/widget/XRecyclerView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 41
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 42
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "fixedFaultList"

    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->result:Ljava/lang/String;

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " fixedFaultList: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->result:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FixedFaultListFragment"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->result:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->updateFaultBeans(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "savedInstanceState"
        }
    .end annotation

    const p2, 0x7f0a0159

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XRecyclerView;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->faultListView:Lcom/xiaopeng/xui/widget/XRecyclerView;

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/FixedFaultListFragment;->initView()V

    return-void
.end method
