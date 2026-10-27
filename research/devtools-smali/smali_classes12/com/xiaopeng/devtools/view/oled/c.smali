.class public Lcom/xiaopeng/devtools/view/oled/c;
.super Landroid/support/v4/app/Fragment;
.source "OledMusicBookFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/view/oled/c$a;
    }
.end annotation


# instance fields
.field private RS:Landroid/widget/TableLayout;

.field private RT:[Ljava/lang/String;

.field private RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

.field private RV:[[I

.field private RW:Lcom/xiaopeng/devtools/view/oled/c$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/oled/c;)[[I
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    return-object p0
.end method

.method public static b(Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;)Lcom/xiaopeng/devtools/view/oled/c;
    .locals 3

    .line 50
    new-instance v0, Lcom/xiaopeng/devtools/view/oled/c;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/view/oled/c;-><init>()V

    .line 51
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 52
    const-string v2, "oled_note_params"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 53
    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/oled/c;->setArguments(Landroid/os/Bundle;)V

    .line 54
    return-object v0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/oled/c;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/oled/c;->nK()V

    return-void
.end method

.method private nK()V
    .locals 9

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget v1, v1, v2

    iput v1, v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yM:I

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    aget-object v1, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    iput v1, v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yN:I

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    aget-object v1, v1, v2

    const/4 v4, 0x2

    aget v1, v1, v4

    iput v1, v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yO:I

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    aget-object v1, v1, v2

    const/4 v5, 0x3

    aget v1, v1, v5

    iput v1, v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yP:I

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    aget-object v1, v1, v2

    const/4 v6, 0x4

    aget v1, v1, v6

    iput v1, v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yQ:I

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    aget-object v1, v1, v2

    const/4 v7, 0x5

    aget v1, v1, v7

    iput v1, v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yR:I

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    aget-object v1, v1, v2

    const/4 v8, 0x6

    aget v1, v1, v8

    iput v1, v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yS:I

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    aget-object v1, v1, v3

    aget v1, v1, v2

    iput v1, v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yF:I

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    aget-object v1, v1, v3

    aget v1, v1, v3

    iput v1, v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yG:I

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    aget-object v1, v1, v3

    aget v1, v1, v4

    iput v1, v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yH:I

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    aget-object v1, v1, v3

    aget v1, v1, v5

    iput v1, v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yI:I

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    aget-object v1, v1, v3

    aget v1, v1, v6

    iput v1, v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yJ:I

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    aget-object v1, v1, v3

    aget v1, v1, v7

    iput v1, v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yK:I

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    aget-object v1, v1, v3

    aget v1, v1, v8

    iput v1, v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yL:I

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    aget-object v1, v1, v4

    aget v1, v1, v2

    iput v1, v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->za:I

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    aget-object v1, v1, v4

    aget v1, v1, v3

    iput v1, v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->zb:I

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    aget-object v1, v1, v4

    aget v1, v1, v4

    iput v1, v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->zc:I

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    aget-object v1, v1, v4

    aget v1, v1, v5

    iput v1, v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->zd:I

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    aget-object v1, v1, v4

    aget v1, v1, v6

    iput v1, v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->ze:I

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    aget-object v1, v1, v4

    aget v1, v1, v7

    iput v1, v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->zf:I

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    aget-object v1, v1, v4

    aget v1, v1, v8

    iput v1, v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->zg:I

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    aget-object v1, v1, v5

    aget v1, v1, v2

    iput v1, v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yT:I

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    aget-object v1, v1, v5

    aget v1, v1, v3

    iput v1, v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yU:I

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    aget-object v1, v1, v5

    aget v1, v1, v4

    iput v1, v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yV:I

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    aget-object v1, v1, v5

    aget v1, v1, v5

    iput v1, v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yW:I

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    aget-object v1, v1, v5

    aget v1, v1, v6

    iput v1, v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yX:I

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    aget-object v1, v1, v5

    aget v1, v1, v7

    iput v1, v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yY:I

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    aget-object v1, v1, v5

    aget v1, v1, v8

    iput v1, v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yZ:I

    .line 151
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 155
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 156
    instance-of v0, p1, Lcom/xiaopeng/devtools/view/oled/c$a;

    if-eqz v0, :cond_0

    .line 157
    check-cast p1, Lcom/xiaopeng/devtools/view/oled/c$a;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RW:Lcom/xiaopeng/devtools/view/oled/c$a;

    .line 162
    return-void

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnFragmentInteractionListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 59
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/oled/c;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/oled/c;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "oled_note_params"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    if-eqz p1, :cond_1

    .line 64
    const/4 p1, 0x4

    new-array v0, p1, [[I

    const/4 v1, 0x7

    new-array v2, v1, [I

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget v3, v3, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yM:I

    const/4 v4, 0x0

    aput v3, v2, v4

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget v3, v3, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yN:I

    const/4 v5, 0x1

    aput v3, v2, v5

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget v3, v3, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yO:I

    const/4 v6, 0x2

    aput v3, v2, v6

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget v3, v3, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yP:I

    const/4 v7, 0x3

    aput v3, v2, v7

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget v3, v3, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yQ:I

    aput v3, v2, p1

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget v3, v3, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yR:I

    const/4 v8, 0x5

    aput v3, v2, v8

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget v3, v3, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yS:I

    const/4 v9, 0x6

    aput v3, v2, v9

    aput-object v2, v0, v4

    new-array v2, v1, [I

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget v3, v3, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yF:I

    aput v3, v2, v4

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget v3, v3, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yG:I

    aput v3, v2, v5

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget v3, v3, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yH:I

    aput v3, v2, v6

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget v3, v3, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yI:I

    aput v3, v2, v7

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget v3, v3, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yJ:I

    aput v3, v2, p1

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget v3, v3, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yK:I

    aput v3, v2, v8

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget v3, v3, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yL:I

    aput v3, v2, v9

    aput-object v2, v0, v5

    new-array v2, v1, [I

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget v3, v3, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->za:I

    aput v3, v2, v4

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget v3, v3, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->zb:I

    aput v3, v2, v5

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget v3, v3, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->zc:I

    aput v3, v2, v6

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget v3, v3, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->zd:I

    aput v3, v2, v7

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget v3, v3, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->ze:I

    aput v3, v2, p1

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget v3, v3, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->zf:I

    aput v3, v2, v8

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget v3, v3, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->zg:I

    aput v3, v2, v9

    aput-object v2, v0, v6

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget v2, v2, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yT:I

    aput v2, v1, v4

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget v2, v2, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yU:I

    aput v2, v1, v5

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget v2, v2, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yV:I

    aput v2, v1, v6

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget v2, v2, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yW:I

    aput v2, v1, v7

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget v2, v2, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yX:I

    aput v2, v1, p1

    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget p1, p1, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yY:I

    aput p1, v1, v8

    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/c;->RU:Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    iget p1, p1, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;->yZ:I

    aput p1, v1, v9

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    .line 75
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 81
    const/4 p3, 0x0

    const v0, 0x7f0c0096

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 82
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f030007

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/devtools/view/oled/c;->RT:[Ljava/lang/String;

    .line 83
    const p2, 0x7f090381

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TableLayout;

    iput-object p2, p0, Lcom/xiaopeng/devtools/view/oled/c;->RS:Landroid/widget/TableLayout;

    .line 85
    move p2, p3

    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RS:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RS:Landroid/widget/TableLayout;

    invoke-virtual {v0, p2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    .line 87
    move v1, p3

    :goto_1
    invoke-virtual {v0}, Landroid/widget/TableRow;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/xiaopeng/devtools/view/oled/c;->RT:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v3, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    if-eqz v3, :cond_1

    .line 91
    iget-object v3, p0, Lcom/xiaopeng/devtools/view/oled/c;->RV:[[I

    aget-object v3, v3, p2

    aget v3, v3, v1

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 92
    invoke-virtual {v2}, Landroid/widget/Button;->isSelected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 93
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_2

    .line 96
    :cond_0
    invoke-virtual {v2}, Landroid/widget/Button;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    invoke-virtual {v2, p3}, Landroid/widget/Button;->setSelected(Z)V

    .line 101
    :cond_1
    :goto_2
    nop

    .line 102
    nop

    .line 103
    new-instance v3, Lcom/xiaopeng/devtools/view/oled/c$1;

    invoke-direct {v3, p0, v2, p2, v1}, Lcom/xiaopeng/devtools/view/oled/c$1;-><init>(Lcom/xiaopeng/devtools/view/oled/c;Landroid/widget/Button;II)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    move v1, v4

    goto :goto_1

    .line 85
    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 119
    :cond_3
    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 166
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/oled/c;->RW:Lcom/xiaopeng/devtools/view/oled/c$a;

    .line 168
    return-void
.end method
