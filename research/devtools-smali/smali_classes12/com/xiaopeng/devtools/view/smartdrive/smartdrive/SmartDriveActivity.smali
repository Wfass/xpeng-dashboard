.class public Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "SmartDriveActivity.java"

# interfaces
.implements Lcom/xiaopeng/devtools/a;
.implements Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/a;


# instance fields
.field private Rr:Landroid/widget/LinearLayout;

.field private Ry:Landroid/widget/LinearLayout;

.field private Tw:Landroid/widget/TextView;

.field private Tx:Landroid/widget/TextView;

.field private Ty:Landroid/widget/TextView;

.field private Tz:Lcom/xiaopeng/devtools/presenter/f/e;

.field private message:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->message:I

    return-void
.end method

.method private synthetic a(Lcom/xiaopeng/devtools/bean/smartdrive/SmartDriveData;Landroid/view/View;)V
    .locals 2

    .line 116
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Tz:Lcom/xiaopeng/devtools/presenter/f/e;

    invoke-interface {p2, p1}, Lcom/xiaopeng/devtools/presenter/f/e;->b(Lcom/xiaopeng/devtools/bean/smartdrive/SmartDriveData;)V

    .line 117
    iget p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->message:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->message:I

    .line 118
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    iget v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->message:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const v0, 0x7f10019f

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xui/app/g;->i(Ljava/lang/CharSequence;)V

    .line 119
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->nS()V

    .line 120
    return-void
.end method

.method public static synthetic lambda$JV-jbnAVcjPmqZUIS4AoOoSGHhw(Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;Lcom/xiaopeng/devtools/bean/smartdrive/SmartDriveData;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->a(Lcom/xiaopeng/devtools/bean/smartdrive/SmartDriveData;Landroid/view/View;)V

    return-void
.end method

.method private nS()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Tw:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Tw:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Tx:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Tx:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Ty:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Ty:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :cond_2
    return-void
.end method


# virtual methods
.method public a([I)V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Tw:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCU_CDU_Mode_Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCU_CDU_Log_Data_1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCU_CDU_Log_Data_2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Tw:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :cond_0
    return-void
.end method

.method public b([I)V
    .locals 4

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Tx:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCU_CDU_Log_Data_7: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCU_CDU_Log_Data_8: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCU_CDU_Log_Data_9: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCU_CDU_Log_Data_10: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Tx:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_0
    return-void
.end method

.method public c([I)V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Ty:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCU_CDU_Log_Data_3: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCU_CDU_Log_Data_4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCU_CDU_Log_Data_5: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCU_CDU_Log_Data_6: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    aget p1, p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 211
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Ty:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :cond_0
    return-void
.end method

.method public fd()V
    .locals 1

    .line 45
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 46
    const v0, 0x7f0c0061

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->setContentView(I)V

    .line 47
    new-instance v0, Lcom/xiaopeng/devtools/presenter/f/f;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/f/f;-><init>(Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Tz:Lcom/xiaopeng/devtools/presenter/f/e;

    .line 48
    return-void
.end method

.method public fe()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 53
    const v0, 0x7f090232

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Rr:Landroid/widget/LinearLayout;

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Tz:Lcom/xiaopeng/devtools/presenter/f/e;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/f/e;->jZ()V

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Tz:Lcom/xiaopeng/devtools/presenter/f/e;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/f/e;->onCreate()V

    .line 56
    return-void
.end method

.method public ff()V
    .locals 0

    .line 60
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 61
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 82
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Tz:Lcom/xiaopeng/devtools/presenter/f/e;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/f/e;->onDestroy()V

    .line 84
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 70
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onResume()V

    .line 78
    return-void
.end method

.method public s(Ljava/util/List;)V
    .locals 10
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/bean/smartdrive/SmartDriveData;",
            ">;)V"
        }
    .end annotation

    .line 89
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x11

    const/high16 v4, 0x41c00000    # 24.0f

    const/4 v5, -0x2

    if-ge v1, v2, :cond_3

    .line 91
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/devtools/bean/smartdrive/SmartDriveData;

    .line 93
    rem-int/lit8 v6, v1, 0x3

    if-nez v6, :cond_0

    .line 94
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Ry:Landroid/widget/LinearLayout;

    .line 95
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 97
    const/16 v5, 0x30

    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 98
    iget-object v5, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Ry:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v5, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Ry:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 101
    iget-object v5, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Ry:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 103
    :cond_0
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 104
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0xe6

    const/16 v9, 0x5a

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 106
    iput v3, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 107
    if-eqz v6, :cond_1

    .line 108
    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 110
    :cond_1
    invoke-virtual {v5, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    const v3, 0x7f0800c0

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 112
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setTextSize(F)V

    .line 113
    invoke-virtual {v2}, Lcom/xiaopeng/devtools/bean/smartdrive/SmartDriveData;->getBtName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 114
    const/4 v3, -0x1

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 115
    new-instance v3, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/-$$Lambda$SmartDriveActivity$JV-jbnAVcjPmqZUIS4AoOoSGHhw;

    invoke-direct {v3, p0, v2}, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/-$$Lambda$SmartDriveActivity$JV-jbnAVcjPmqZUIS4AoOoSGHhw;-><init>(Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;Lcom/xiaopeng/devtools/bean/smartdrive/SmartDriveData;)V

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Ry:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    const/4 v2, 0x2

    if-ne v6, v2, :cond_2

    .line 125
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Rr:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Ry:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    rem-int/lit8 p1, p1, 0x3

    if-eqz p1, :cond_4

    .line 129
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Rr:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Ry:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    :cond_4
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 133
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 135
    const/16 v2, 0x12c

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 136
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 138
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 140
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Tw:Landroid/widget/TextView;

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Tw:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 142
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 144
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Tw:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 148
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 149
    const/16 v1, 0x3c

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 151
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Ty:Landroid/widget/TextView;

    .line 152
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Ty:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 153
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Ty:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Tx:Landroid/widget/TextView;

    .line 156
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Tx:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 157
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Tx:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Tw:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Ty:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Tx:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Rr:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 165
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;->Tz:Lcom/xiaopeng/devtools/presenter/f/e;

    invoke-interface {p1}, Lcom/xiaopeng/devtools/presenter/f/e;->jY()V

    .line 166
    return-void
.end method
