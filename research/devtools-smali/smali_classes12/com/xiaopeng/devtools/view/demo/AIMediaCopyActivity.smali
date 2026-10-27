.class public Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "AIMediaCopyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private CI:Landroid/widget/Button;

.field private CK:Landroid/widget/Button;

.field private CL:Ljava/lang/String;

.field private CM:Lcom/xiaopeng/devtools/system/a/b;

.field private CO:Landroid/widget/TextView;

.field private CS:I

.field private CT:I

.field private CU:Ljava/lang/String;

.field private CW:Z

.field private FM:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CW:Z

    .line 57
    new-instance v0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity$1;-><init>(Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->mHandler:Landroid/os/Handler;

    .line 111
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity$2;-><init>(Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->mThread:Ljava/lang/Thread;

    return-void
.end method

.method private V(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .line 227
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-static {p2}, Lcom/xiaopeng/devtools/utils/g;->aW(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    const-string v1, "AIMediaCopyActivity"

    const-string v2, "copyAiMedia mkDir fail "

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    :cond_0
    const-string v1, "AIMediaCopyActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyAiMedia srcPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " destPath = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 233
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 234
    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 235
    const-string v2, "AIMediaCopyActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyAiMedia filesList[i].getName() =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 237
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->V(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 239
    :cond_1
    iget v2, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CS:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CS:I

    .line 240
    new-instance v2, Lcom/xiaopeng/devtools/system/b/a;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/devtools/system/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-static {v2}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 234
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    :cond_2
    return v0
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;)Lcom/xiaopeng/devtools/system/a/b;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->V(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;)Landroid/widget/Button;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CI:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CU:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->FM:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->ms()V

    return-void
.end method

.method static synthetic e(Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CL:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->mr()V

    return-void
.end method

.method private mr()V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    const-string v0, "AIMediaCopyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSourcePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/AIAssistant/media/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/AIAssistant/media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/utils/g;->I(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->FM:Landroid/widget/TextView;

    const v1, 0x7f1000e6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CI:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->mThread:Ljava/lang/Thread;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->e(Ljava/lang/Runnable;)V

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->mThread:Ljava/lang/Thread;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->FM:Landroid/widget/TextView;

    const v1, 0x7f10021e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 215
    :cond_1
    :goto_0
    return-void
.end method

.method private ms()V
    .locals 4

    .line 248
    const-string v0, "unknown"

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x1060019

    const/4 v2, 0x0

    if-nez v0, :cond_3

    const-string v0, "removed"

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CU:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    const-string v0, "mounted"

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CU:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    const-string v0, "/mnt/extsd/AIAssistant/media/"

    const-string v1, ".mp4"

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/utils/g;->I(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CW:Z

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CO:Landroid/widget/TextView;

    const v1, 0x7f100039

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CO:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 258
    :cond_1
    iput-boolean v2, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CW:Z

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CO:Landroid/widget/TextView;

    const v1, 0x7f10003a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CO:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 263
    :cond_2
    iput-boolean v2, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CW:Z

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CO:Landroid/widget/TextView;

    const v2, 0x7f1003de

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CO:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 249
    :cond_3
    :goto_0
    iput-boolean v2, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CW:Z

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CO:Landroid/widget/TextView;

    const v2, 0x7f100226

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CO:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    :goto_1
    return-void
.end method

.method private showDialog()V
    .locals 2

    .line 180
    new-instance v0, Lcom/xiaopeng/devtools/view/a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/a;-><init>(Landroid/app/Activity;)V

    .line 181
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/a;->show()V

    .line 183
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/a;->setCanceledOnTouchOutside(Z)V

    .line 184
    const v1, 0x7f1001cd

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/a;->cT(Ljava/lang/String;)V

    .line 185
    const v1, 0x7f1000bf

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/a;->cR(Ljava/lang/String;)V

    .line 186
    const v1, 0x7f1000bd

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/a;->cQ(Ljava/lang/String;)V

    .line 187
    new-instance v1, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity$3;-><init>(Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/a;->a(Lcom/xiaopeng/devtools/view/a$a;)V

    .line 194
    new-instance v1, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity$4;-><init>(Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/a;->b(Lcom/xiaopeng/devtools/view/a$a;)V

    .line 201
    return-void
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 156
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 157
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->setContentView(I)V

    .line 158
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09018a

    if-eq p1, v0, :cond_1

    const v0, 0x7f09031c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    const-string p1, "SD"

    invoke-static {p0, p1}, Lcom/xiaopeng/devtools/utils/g;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/os/storage/StorageVolume;

    move-result-object p1

    .line 171
    if-eqz p1, :cond_3

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->FM:Landroid/widget/TextView;

    const v1, 0x7f10015f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 173
    invoke-static {p1, p0}, Lcom/xiaopeng/devtools/utils/g;->a(Landroid/os/storage/StorageVolume;Landroid/content/Context;)V

    goto :goto_0

    .line 164
    :cond_1
    iget-boolean p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CW:Z

    if-eqz p1, :cond_2

    .line 165
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->showDialog()V

    goto :goto_0

    .line 167
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->mr()V

    .line 168
    nop

    .line 177
    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 121
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    const p1, 0x7f0903e0

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CO:Landroid/widget/TextView;

    .line 124
    const p1, 0x7f0903e9

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->FM:Landroid/widget/TextView;

    .line 125
    const p1, 0x7f09018a

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CI:Landroid/widget/Button;

    .line 126
    const p1, 0x7f09031c

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CK:Landroid/widget/Button;

    .line 128
    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CS:I

    .line 129
    iput p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CT:I

    .line 130
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->lm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CL:Ljava/lang/String;

    .line 131
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 132
    new-instance v0, Lcom/xiaopeng/devtools/system/a/b;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/system/a/b;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 134
    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/g;->ag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CU:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CI:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CI:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 142
    :goto_0
    const-string v0, "unknown"

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CU:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "removed"

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CU:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 145
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CK:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 143
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CK:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 147
    :goto_2
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->ms()V

    .line 149
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CI:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CK:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 219
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 223
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 224
    return-void
.end method

.method public onEvent(Ljava/lang/Integer;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 89
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 101
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CI:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 102
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->FM:Landroid/widget/TextView;

    const v0, 0x7f100147

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 103
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->ms()V

    .line 104
    goto :goto_0

    .line 91
    :pswitch_1
    iget p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CT:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CT:I

    .line 92
    iget p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CT:I

    iget v1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CS:I

    if-ne p1, v1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->CI:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 94
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->FM:Landroid/widget/TextView;

    const v0, 0x7f100154

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 95
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->ms()V

    .line 109
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
