.class public Lcom/xiaopeng/devtools/view/MapDataCopyActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "MapDataCopyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private CH:Landroid/widget/Button;

.field private CI:Landroid/widget/Button;

.field private CJ:Landroid/widget/Button;

.field private CK:Landroid/widget/Button;

.field private CL:Ljava/lang/String;

.field private CM:Lcom/xiaopeng/devtools/system/a/b;

.field private CN:Landroid/widget/TextView;

.field private CO:Landroid/widget/TextView;

.field private CP:Landroid/widget/TextView;

.field private CQ:Landroid/widget/TextView;

.field private CS:I

.field private CT:I

.field private CU:Ljava/lang/String;

.field private CV:Z

.field private CW:Z

.field private CX:Z

.field private mHandler:Landroid/os/Handler;

.field private mStep:I

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->mStep:I

    .line 65
    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CV:Z

    .line 66
    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CW:Z

    .line 67
    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CX:Z

    .line 69
    new-instance v0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$1;-><init>(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->mStep:I

    return p1
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;)Lcom/xiaopeng/devtools/system/a/b;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CT:I

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;)Landroid/widget/Button;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CH:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CU:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CS:I

    return p1
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;)Landroid/widget/Button;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CI:Landroid/widget/Button;

    return-object p0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 276
    const-string v0, "MapDataCopyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSourcePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaopeng/devtools/utils/g;->I(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 278
    iput p4, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->mStep:I

    .line 279
    if-ne p4, v2, :cond_0

    .line 280
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CQ:Landroid/widget/TextView;

    const p4, 0x7f1000eb

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 281
    :cond_0
    if-ne p4, v1, :cond_1

    .line 282
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CQ:Landroid/widget/TextView;

    const p4, 0x7f1000e6

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 283
    :cond_1
    if-ne p4, v0, :cond_2

    .line 284
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CQ:Landroid/widget/TextView;

    const p4, 0x7f1000e7

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(I)V

    .line 286
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CH:Landroid/widget/Button;

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 287
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CI:Landroid/widget/Button;

    invoke-virtual {p1, p4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 288
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CJ:Landroid/widget/Button;

    invoke-virtual {p1, p4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 289
    new-instance p1, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$4;

    invoke-direct {p1, p0, p3, p2}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$4;-><init>(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 299
    :cond_3
    if-ne p4, v2, :cond_4

    .line 300
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CQ:Landroid/widget/TextView;

    const p2, 0x7f100221

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 301
    :cond_4
    if-ne p4, v1, :cond_5

    .line 302
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CQ:Landroid/widget/TextView;

    const p2, 0x7f10021e

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 303
    :cond_5
    if-ne p4, v0, :cond_6

    .line 304
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CQ:Landroid/widget/TextView;

    const p2, 0x7f10021f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 308
    :cond_6
    :goto_1
    return-void
.end method

.method private cG(I)V
    .locals 2

    .line 238
    new-instance v0, Lcom/xiaopeng/devtools/view/a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/a;-><init>(Landroid/app/Activity;)V

    .line 239
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/a;->show()V

    .line 241
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/a;->setCanceledOnTouchOutside(Z)V

    .line 242
    if-ne p1, v1, :cond_0

    .line 243
    const v1, 0x7f1001cd

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/a;->cT(Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 245
    const v1, 0x7f100038

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/a;->cT(Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 247
    const v1, 0x7f100046

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/a;->cT(Ljava/lang/String;)V

    .line 249
    :cond_2
    :goto_0
    const v1, 0x7f1000bf

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/a;->cR(Ljava/lang/String;)V

    .line 250
    const v1, 0x7f1000bd

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/a;->cQ(Ljava/lang/String;)V

    .line 251
    new-instance v1, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$2;-><init>(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/a;->a(Lcom/xiaopeng/devtools/view/a$a;)V

    .line 258
    new-instance v1, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$3;-><init>(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/a;->b(Lcom/xiaopeng/devtools/view/a$a;)V

    .line 271
    return-void
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;)Landroid/widget/Button;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CJ:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;)Landroid/widget/TextView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CQ:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->lP()V

    return-void
.end method

.method static synthetic g(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CL:Ljava/lang/String;

    return-object p0
.end method

.method private lP()V
    .locals 6

    .line 320
    const-string v0, "unknown"

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x1060019

    const/4 v2, 0x0

    if-nez v0, :cond_5

    const-string v0, "removed"

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CU:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 330
    :cond_0
    const-string v0, "mounted"

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CU:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 331
    const-string v0, "/mnt/extsd/montecarlo/data/Navi/compile_v2/chn/"

    const-string v1, ".ans"

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/utils/g;->I(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const v1, 0x1060017

    const v3, 0x1060015

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 332
    iput-boolean v4, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CV:Z

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CN:Landroid/widget/TextView;

    const v5, 0x7f1001cc

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CN:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 336
    :cond_1
    iput-boolean v2, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CV:Z

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CN:Landroid/widget/TextView;

    const v5, 0x7f1001ce

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CN:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 341
    :goto_0
    const-string v0, "/mnt/extsd/AIAssistant/media/"

    const-string v5, ".mp4"

    invoke-static {v0, v5}, Lcom/xiaopeng/devtools/utils/g;->I(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 342
    iput-boolean v4, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CW:Z

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CO:Landroid/widget/TextView;

    const v5, 0x7f100039

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 344
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CO:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 346
    :cond_2
    iput-boolean v2, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CW:Z

    .line 347
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CO:Landroid/widget/TextView;

    const v5, 0x7f10003a

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CO:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 351
    :goto_1
    const-string v0, "/mnt/extsd/AppStore/apk/"

    const-string v5, ".apk"

    invoke-static {v0, v5}, Lcom/xiaopeng/devtools/utils/g;->I(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 352
    iput-boolean v4, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CX:Z

    .line 353
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CP:Landroid/widget/TextView;

    const v1, 0x7f100045

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 354
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CP:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 356
    :cond_3
    iput-boolean v2, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CX:Z

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CP:Landroid/widget/TextView;

    const v2, 0x7f100048

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 358
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CP:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 361
    :cond_4
    iput-boolean v2, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CV:Z

    .line 362
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CN:Landroid/widget/TextView;

    const v3, 0x7f1003de

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CN:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 365
    iput-boolean v2, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CW:Z

    .line 366
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CO:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CO:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 369
    iput-boolean v2, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CX:Z

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CP:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 371
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CP:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 321
    :cond_5
    :goto_2
    iput-boolean v2, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CV:Z

    .line 322
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CN:Landroid/widget/TextView;

    const v3, 0x7f100226

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 323
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CN:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 324
    iput-boolean v2, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CW:Z

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CO:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CO:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 327
    iput-boolean v2, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CX:Z

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CP:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 329
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CP:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 373
    :goto_3
    return-void
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 199
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 200
    const v0, 0x7f0c004e

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->setContentView(I)V

    .line 201
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 228
    :sswitch_0
    const-string p1, "SD"

    invoke-static {p0, p1}, Lcom/xiaopeng/devtools/utils/g;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/os/storage/StorageVolume;

    move-result-object p1

    .line 229
    if-eqz p1, :cond_3

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CQ:Landroid/widget/TextView;

    const v1, 0x7f10015f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 231
    invoke-static {p1, p0}, Lcom/xiaopeng/devtools/utils/g;->a(Landroid/os/storage/StorageVolume;Landroid/content/Context;)V

    goto :goto_0

    .line 207
    :sswitch_1
    iget-boolean p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CV:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 208
    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->cG(I)V

    goto :goto_0

    .line 210
    :cond_0
    const-string p1, ".ans"

    const-string v1, "/chn/"

    const-string v2, "/mnt/extsd/montecarlo/data/Navi/compile_v2/chn/"

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 212
    goto :goto_0

    .line 221
    :sswitch_2
    iget-boolean p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CX:Z

    const/4 v0, 0x3

    if-eqz p1, :cond_1

    .line 222
    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->cG(I)V

    goto :goto_0

    .line 224
    :cond_1
    const-string p1, ".apk"

    const-string v1, "/AppStore/apk/"

    const-string v2, "/mnt/extsd/AppStore/apk/"

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 226
    goto :goto_0

    .line 214
    :sswitch_3
    iget-boolean p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CW:Z

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    .line 215
    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->cG(I)V

    goto :goto_0

    .line 217
    :cond_2
    const-string p1, ".mp4"

    const-string v1, "/AIAssistant/media/"

    const-string v2, "/mnt/extsd/AIAssistant/media/"

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 219
    nop

    .line 235
    :cond_3
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09018a -> :sswitch_3
        0x7f09018b -> :sswitch_2
        0x7f09018d -> :sswitch_1
        0x7f09031c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 153
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    const p1, 0x7f09040d

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CN:Landroid/widget/TextView;

    .line 156
    const p1, 0x7f0903e0

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CO:Landroid/widget/TextView;

    .line 157
    const p1, 0x7f0903e3

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CP:Landroid/widget/TextView;

    .line 158
    const p1, 0x7f09018a

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CI:Landroid/widget/Button;

    .line 159
    const p1, 0x7f09018d

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CH:Landroid/widget/Button;

    .line 160
    const p1, 0x7f09018b

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CJ:Landroid/widget/Button;

    .line 161
    const p1, 0x7f09031c

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CK:Landroid/widget/Button;

    .line 162
    const p1, 0x7f0903ea

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CQ:Landroid/widget/TextView;

    .line 164
    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CS:I

    .line 165
    iput p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CT:I

    .line 166
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->lm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CL:Ljava/lang/String;

    .line 167
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 168
    new-instance v0, Lcom/xiaopeng/devtools/system/a/b;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/system/a/b;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 170
    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/g;->ag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CU:Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CH:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CI:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CJ:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CH:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CI:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CJ:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 182
    :goto_0
    const-string v0, "unknown"

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CU:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "removed"

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CU:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 185
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CK:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 183
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CK:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 188
    :goto_2
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->lP()V

    .line 190
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CH:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CI:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CJ:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CK:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 195
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 312
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 313
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 316
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 317
    return-void
.end method

.method public onEvent(Ljava/lang/Integer;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 106
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 132
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CH:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 133
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CI:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 134
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CJ:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 135
    iget p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->mStep:I

    if-ne p1, v3, :cond_0

    .line 136
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CQ:Landroid/widget/TextView;

    const v1, 0x7f10014a

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 137
    :cond_0
    iget p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->mStep:I

    if-ne p1, v2, :cond_1

    .line 138
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CQ:Landroid/widget/TextView;

    const v1, 0x7f100147

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 139
    :cond_1
    iget p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->mStep:I

    if-ne p1, v1, :cond_2

    .line 140
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CQ:Landroid/widget/TextView;

    const v1, 0x7f100148

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 142
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->lP()V

    .line 143
    iput v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->mStep:I

    .line 144
    goto :goto_2

    .line 108
    :pswitch_1
    iget p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CT:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CT:I

    .line 109
    const-string p1, "MapDataCopyActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "POST_FILE_COPY_SUCCESS mFileSumFinish "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CT:I

    iget v4, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CS:I

    if-ne p1, v4, :cond_7

    .line 111
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CH:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CI:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 113
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CJ:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 114
    iget p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->mStep:I

    if-ne p1, v3, :cond_4

    .line 115
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CQ:Landroid/widget/TextView;

    const v1, 0x7f100157

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 116
    const-string p1, "activity"

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 117
    if-eqz p1, :cond_3

    .line 118
    const-string v1, "com.xiaopeng.montecarlo"

    invoke-virtual {p1, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 120
    :cond_3
    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->mStep:I

    if-ne p1, v2, :cond_5

    .line 121
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CQ:Landroid/widget/TextView;

    const v1, 0x7f100154

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 122
    :cond_5
    iget p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->mStep:I

    if-ne p1, v1, :cond_6

    .line 123
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->CQ:Landroid/widget/TextView;

    const v1, 0x7f100155

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 125
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->lP()V

    .line 126
    iput v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->mStep:I

    .line 149
    :cond_7
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
