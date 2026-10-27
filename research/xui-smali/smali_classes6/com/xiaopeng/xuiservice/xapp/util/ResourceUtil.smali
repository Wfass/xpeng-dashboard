.class public Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;
.super Ljava/lang/Object;
.source "ResourceUtil.java"


# static fields
.field private static mKeyViewInfo:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 11
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->mKeyViewInfo:Landroid/util/SparseArray;

    .line 13
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->mKeyViewInfo:Landroid/util/SparseArray;

    new-instance v7, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;

    const-string v4, "l"

    .line 15
    const v8, 0x7f0700cb

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v5

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v6

    const/16 v2, 0x1f41

    const v3, 0x7f08026c

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;-><init>(IILjava/lang/String;II)V

    .line 13
    const/16 v1, 0x1f41

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->mKeyViewInfo:Landroid/util/SparseArray;

    new-instance v7, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;

    const-string v4, "r"

    .line 19
    invoke-static {v8}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v5

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v6

    const/16 v2, 0x1f42

    const v3, 0x7f080270

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;-><init>(IILjava/lang/String;II)V

    .line 17
    const/16 v1, 0x1f42

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->mKeyViewInfo:Landroid/util/SparseArray;

    new-instance v7, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;

    const-string v4, "a"

    .line 23
    const v8, 0x7f0700da

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v5

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v6

    const/16 v2, 0x60

    const v3, 0x7f080268

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;-><init>(IILjava/lang/String;II)V

    .line 21
    const/16 v1, 0x60

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->mKeyViewInfo:Landroid/util/SparseArray;

    new-instance v7, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;

    const-string v4, "b"

    .line 27
    invoke-static {v8}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v5

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v6

    const/16 v2, 0x61

    const v3, 0x7f080269

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;-><init>(IILjava/lang/String;II)V

    .line 25
    const/16 v1, 0x61

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->mKeyViewInfo:Landroid/util/SparseArray;

    new-instance v7, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;

    const-string/jumbo v4, "x"

    .line 31
    invoke-static {v8}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v5

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v6

    const/16 v2, 0x63

    const v3, 0x7f080278

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;-><init>(IILjava/lang/String;II)V

    .line 29
    const/16 v1, 0x63

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->mKeyViewInfo:Landroid/util/SparseArray;

    new-instance v7, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;

    const-string/jumbo v4, "y"

    .line 35
    invoke-static {v8}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v5

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v6

    const/16 v2, 0x64

    const v3, 0x7f080279

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;-><init>(IILjava/lang/String;II)V

    .line 33
    const/16 v1, 0x64

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->mKeyViewInfo:Landroid/util/SparseArray;

    new-instance v7, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;

    const-string v4, "rb"

    .line 39
    invoke-static {v8}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v5

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v6

    const/16 v2, 0x67

    const v3, 0x7f080271

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;-><init>(IILjava/lang/String;II)V

    .line 37
    const/16 v1, 0x67

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->mKeyViewInfo:Landroid/util/SparseArray;

    new-instance v7, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;

    const-string v4, "rt"

    .line 43
    invoke-static {v8}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v5

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v6

    const/16 v2, 0x69

    const v3, 0x7f080273

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;-><init>(IILjava/lang/String;II)V

    .line 41
    const/16 v1, 0x69

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->mKeyViewInfo:Landroid/util/SparseArray;

    new-instance v7, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;

    const-string v4, "lb"

    .line 47
    invoke-static {v8}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v5

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v6

    const/16 v2, 0x66

    const v3, 0x7f08026d

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;-><init>(IILjava/lang/String;II)V

    .line 45
    const/16 v1, 0x66

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->mKeyViewInfo:Landroid/util/SparseArray;

    new-instance v7, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;

    const-string v4, "lt"

    .line 51
    invoke-static {v8}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v5

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v6

    const/16 v2, 0x68

    const v3, 0x7f08026f

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;-><init>(IILjava/lang/String;II)V

    .line 49
    const/16 v1, 0x68

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->mKeyViewInfo:Landroid/util/SparseArray;

    new-instance v7, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;

    const-string v4, "select"

    .line 55
    invoke-static {v8}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v5

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v6

    const/16 v2, 0x6d

    const v3, 0x7f080274

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;-><init>(IILjava/lang/String;II)V

    .line 53
    const/16 v1, 0x6d

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->mKeyViewInfo:Landroid/util/SparseArray;

    new-instance v7, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;

    const-string v4, "clear"

    .line 59
    invoke-static {v8}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v5

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v6

    const/16 v2, 0x1c

    const v3, 0x7f08026a

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;-><init>(IILjava/lang/String;II)V

    .line 57
    const/16 v1, 0x1c

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->mKeyViewInfo:Landroid/util/SparseArray;

    new-instance v7, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;

    const-string v4, "start"

    .line 63
    invoke-static {v8}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v5

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v6

    const/16 v2, 0x6c

    const v3, 0x7f080275

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;-><init>(IILjava/lang/String;II)V

    .line 61
    const/16 v1, 0x6c

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArrayString(I)[Ljava/lang/String;
    .locals 1
    .param p0, "resId"    # I

    .line 75
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDimen(I)I
    .locals 1
    .param p0, "resId"    # I

    .line 67
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1
    .param p0, "resId"    # I

    .line 71
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getViewInfoByKeyCode(I)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;
    .locals 1
    .param p0, "keycode"    # I

    .line 79
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->mKeyViewInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;

    return-object v0
.end method
