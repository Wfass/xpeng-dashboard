.class Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;
.super Ljava/lang/Object;
.source "KeyConfigFileParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyTouchConfig"
.end annotation


# instance fields
.field private mPointSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private needJoystickMotionEvent:Z

.field private pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser;Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$1;

    .line 138
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;
    .param p1, "x1"    # Ljava/lang/String;

    .line 138
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;->pkgName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;->mPointSparseArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$102(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;
    .param p1, "x1"    # Landroid/util/SparseArray;

    .line 138
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;->mPointSparseArray:Landroid/util/SparseArray;

    return-object p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyTouchConfig{pkgName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mPointSparseArray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;->mPointSparseArray:Landroid/util/SparseArray;

    .line 147
    invoke-virtual {v1}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    return-object v0
.end method
