.class public Lcom/xiaopeng/devtools/view/hwcheck/a;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ImageDispAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/view/hwcheck/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/xiaopeng/devtools/view/hwcheck/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field private PC:Landroid/widget/ImageView;

.field private PD:Landroid/view/WindowManager;

.field private PE:Landroid/view/WindowManager$LayoutParams;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/hwcheck/a;->mList:Ljava/util/List;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/hwcheck/a;->mBitmap:Landroid/graphics/Bitmap;

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/hwcheck/a;->mContext:Landroid/content/Context;

    .line 41
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/hwcheck/a;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/hwcheck/a;->PD:Landroid/view/WindowManager;

    .line 42
    new-instance p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/hwcheck/a;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/hwcheck/a;->PC:Landroid/widget/ImageView;

    .line 43
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/hwcheck/a;->PE:Landroid/view/WindowManager$LayoutParams;

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/hwcheck/a;->PE:Landroid/view/WindowManager$LayoutParams;

    const-string v0, "HwCheckImageView"

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 45
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/hwcheck/a;->PE:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x7ea

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 46
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/hwcheck/a;->PE:Landroid/view/WindowManager$LayoutParams;

    const v0, 0xc010780

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/hwcheck/a;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/hwcheck/a;->mList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/hwcheck/a;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/hwcheck/a;->dr(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/hwcheck/a;)Landroid/widget/ImageView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/hwcheck/a;->PC:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/view/hwcheck/a;)Landroid/view/WindowManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/hwcheck/a;->PD:Landroid/view/WindowManager;

    return-object p0
.end method

.method private dr(Ljava/lang/String;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/hwcheck/a;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/hwcheck/a;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/hwcheck/a;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/hwcheck/a;->mBitmap:Landroid/graphics/Bitmap;

    .line 114
    :cond_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/hwcheck/a;->mBitmap:Landroid/graphics/Bitmap;

    .line 116
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/hwcheck/a;->PC:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/hwcheck/a;->PC:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/hwcheck/a;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 119
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/hwcheck/a;->PC:Landroid/widget/ImageView;

    const/16 v0, 0xf06

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSystemUiVisibility(I)V

    .line 126
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/hwcheck/a;->PD:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/hwcheck/a;->PC:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/hwcheck/a;->PE:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/hwcheck/a;->PC:Landroid/widget/ImageView;

    new-instance v0, Lcom/xiaopeng/devtools/view/hwcheck/a$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/hwcheck/a$2;-><init>(Lcom/xiaopeng/devtools/view/hwcheck/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 139
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/devtools/view/hwcheck/a$a;I)V
    .locals 2

    .line 63
    invoke-static {p1}, Lcom/xiaopeng/devtools/view/hwcheck/a$a;->a(Lcom/xiaopeng/devtools/view/hwcheck/a$a;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/hwcheck/a;->mList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-static {p1}, Lcom/xiaopeng/devtools/view/hwcheck/a$a;->a(Lcom/xiaopeng/devtools/view/hwcheck/a$a;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    invoke-static {p1}, Lcom/xiaopeng/devtools/view/hwcheck/a$a;->b(Lcom/xiaopeng/devtools/view/hwcheck/a$a;)Landroid/widget/RelativeLayout;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/devtools/view/hwcheck/a$1;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/devtools/view/hwcheck/a$1;-><init>(Lcom/xiaopeng/devtools/view/hwcheck/a;I)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method public b(Landroid/view/ViewGroup;I)Lcom/xiaopeng/devtools/view/hwcheck/a$a;
    .locals 1

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/hwcheck/a;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c009c

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 58
    new-instance p2, Lcom/xiaopeng/devtools/view/hwcheck/a$a;

    invoke-direct {p2, p1}, Lcom/xiaopeng/devtools/view/hwcheck/a$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public dI()V
    .locals 7

    .line 90
    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt/usbhost/xptestimage/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 93
    iget-object v4, p0, Lcom/xiaopeng/devtools/view/hwcheck/a;->mList:Ljava/util/List;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    const-string v4, "ImageDispAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filepath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/hwcheck/a;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 28
    check-cast p1, Lcom/xiaopeng/devtools/view/hwcheck/a$a;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/devtools/view/hwcheck/a;->a(Lcom/xiaopeng/devtools/view/hwcheck/a$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/devtools/view/hwcheck/a;->b(Landroid/view/ViewGroup;I)Lcom/xiaopeng/devtools/view/hwcheck/a$a;

    move-result-object p1

    return-object p1
.end method
