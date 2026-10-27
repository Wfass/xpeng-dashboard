.class public Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;
.super Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckBaseItem;
.source "CheckDetailItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Check_CheckDetailItem"


# instance fields
.field private mCategory:Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

.field private mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckBaseItem;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckBaseItem;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$Builder;->access$000(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->mTitle:Ljava/lang/String;

    .line 23
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$Builder;->access$100(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->setKey(Ljava/lang/String;)V

    .line 24
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$Builder;->access$200(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$Builder;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->setLevel(I)V

    .line 25
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$Builder;->access$300(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$Builder;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->setCategory(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$Builder;Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "level",
            "title"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckBaseItem;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->mKey:Ljava/lang/String;

    .line 17
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->setLevel(I)V

    .line 18
    iput-object p3, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->mTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCategory()Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->mCategory:Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "category"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->mCategory:Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->mKey:Ljava/lang/String;

    return-void
.end method

.method public startCheck()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckBaseItem;->startCheck()V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->mKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/SelfCheckUtil;->getCheckResult(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;

    move-result-object v0

    .line 84
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->setResult(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;)V

    return-void
.end method
