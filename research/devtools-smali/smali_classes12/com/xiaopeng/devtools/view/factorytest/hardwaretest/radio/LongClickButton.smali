.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;
.super Landroid/widget/Button;
.source "LongClickButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$a;,
        Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$c;,
        Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$b;
    }
.end annotation


# instance fields
.field private KS:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$a;

.field private KT:J

.field private KU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->init()V

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$c;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->KU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$c;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;)J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->KT:J

    return-wide v0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$a;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->KS:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$a;

    return-object p0
.end method

.method private init()V
    .locals 1

    .line 49
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$c;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$c;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->KU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$c;

    .line 50
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$1;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 57
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$a;J)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->KS:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$a;

    .line 112
    iput-wide p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->KT:J

    .line 113
    return-void
.end method

.method public setLongClickRepeatListener(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$a;)V
    .locals 2

    .line 121
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$a;J)V

    .line 122
    iput-wide v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->KT:J

    .line 123
    return-void
.end method
