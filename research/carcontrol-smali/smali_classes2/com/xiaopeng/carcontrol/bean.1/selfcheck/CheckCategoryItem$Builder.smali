.class public final Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;
.super Ljava/lang/Object;
.source "CheckCategoryItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mEcu:Ljava/lang/String;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->mItems:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->mCategory:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->mItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->mEcu:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public addItem(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;
    .locals 2

    .line 85
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;-><init>(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$1;)V

    return-object v0
.end method

.method public category(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->mCategory:Ljava/lang/String;

    return-object p0
.end method

.method public ecu(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->mEcu:Ljava/lang/String;

    return-object p0
.end method

.method public items(Ljava/util/List;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;",
            ">;)",
            "Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method
