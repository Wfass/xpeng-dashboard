.class public Lcom/xiaopeng/devtools/view/oled/OledActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "OledActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/xiaopeng/devtools/view/oled/b;


# instance fields
.field private RA:Ljava/lang/String;

.field private RB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/bean/oled/CustomOledMusicBook;",
            ">;"
        }
    .end annotation
.end field

.field private RC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;",
            ">;"
        }
    .end annotation
.end field

.field private RD:I

.field private RE:I

.field private RF:I

.field private Rq:Lcom/xiaopeng/devtools/presenter/oled/c;

.field private Rr:Landroid/widget/LinearLayout;

.field private Rs:Landroid/widget/Spinner;

.field private Rt:Landroid/widget/Spinner;

.field private Ru:Landroid/widget/Button;

.field private Rv:Lcom/xiaopeng/devtools/view/oled/adapter/MusicBookAdapter;

.field private Rw:Lcom/xiaopeng/devtools/view/oled/adapter/MusicNoteAdapter;

.field private Rx:Landroid/view/View;

.field private Ry:Landroid/widget/LinearLayout;

.field private Rz:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->RE:I

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->RF:I

    .line 58
    new-instance v0, Lcom/xiaopeng/devtools/view/oled/OledActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/oled/OledActivity$1;-><init>(Lcom/xiaopeng/devtools/view/oled/OledActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/oled/OledActivity;)I
    .locals 2

    .line 36
    iget v0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->RD:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->RD:I

    return v0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/oled/OledActivity;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->RD:I

    return p0
.end method

.method private b(Landroid/support/v4/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;",
            ">;>;)V"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 241
    invoke-virtual {p1, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rw:Lcom/xiaopeng/devtools/view/oled/adapter/MusicNoteAdapter;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/view/oled/adapter/MusicNoteAdapter;->setNoteList(Ljava/util/List;)V

    .line 244
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rw:Lcom/xiaopeng/devtools/view/oled/adapter/MusicNoteAdapter;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/oled/adapter/MusicNoteAdapter;->notifyDataSetChanged()V

    .line 245
    return-void
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/view/oled/OledActivity;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->RB:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/view/oled/OledActivity;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->RC:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaopeng/devtools/view/oled/OledActivity;)Lcom/xiaopeng/devtools/presenter/oled/c;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rq:Lcom/xiaopeng/devtools/presenter/oled/c;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaopeng/devtools/view/oled/OledActivity;)Landroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Lcom/xiaopeng/devtools/view/oled/OledActivity;)Landroid/view/View;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rx:Landroid/view/View;

    return-object p0
.end method

.method static synthetic h(Lcom/xiaopeng/devtools/view/oled/OledActivity;)Landroid/widget/Button;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Ru:Landroid/widget/Button;

    return-object p0
.end method


# virtual methods
.method public A(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/bean/oled/CustomOledMusicBook;",
            ">;)V"
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->RB:Ljava/util/List;

    .line 230
    return-void
.end method

.method public a(Landroid/support/v4/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;",
            ">;>;)V"
        }
    .end annotation

    .line 234
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rz:Landroid/support/v4/util/ArrayMap;

    .line 235
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rz:Landroid/support/v4/util/ArrayMap;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/oled/OledActivity;->b(Landroid/support/v4/util/ArrayMap;)V

    .line 236
    return-void
.end method

.method public fd()V
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 121
    const v0, 0x7f0c0058

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/oled/OledActivity;->setContentView(I)V

    .line 122
    new-instance v0, Lcom/xiaopeng/devtools/presenter/oled/c;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/oled/c;-><init>(Lcom/xiaopeng/devtools/view/oled/b;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rq:Lcom/xiaopeng/devtools/presenter/oled/c;

    .line 123
    return-void
.end method

.method public fe()V
    .locals 1

    .line 127
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 128
    const v0, 0x7f090232

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/oled/OledActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rr:Landroid/widget/LinearLayout;

    .line 129
    new-instance v0, Lcom/xiaopeng/devtools/view/oled/adapter/MusicBookAdapter;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/view/oled/adapter/MusicBookAdapter;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rv:Lcom/xiaopeng/devtools/view/oled/adapter/MusicBookAdapter;

    .line 130
    new-instance v0, Lcom/xiaopeng/devtools/view/oled/adapter/MusicNoteAdapter;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/view/oled/adapter/MusicNoteAdapter;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rw:Lcom/xiaopeng/devtools/view/oled/adapter/MusicNoteAdapter;

    .line 131
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rz:Landroid/support/v4/util/ArrayMap;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->RB:Ljava/util/List;

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rq:Lcom/xiaopeng/devtools/presenter/oled/c;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/oled/c;->onCreate()V

    .line 134
    return-void
.end method

.method public ff()V
    .locals 1

    .line 249
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 250
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 251
    return-void
.end method

.method public lJ()V
    .locals 1

    .line 138
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rq:Lcom/xiaopeng/devtools/presenter/oled/c;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/oled/c;->jP()V

    .line 140
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 306
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 307
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 309
    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 310
    if-eqz p3, :cond_3

    .line 311
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 312
    const-string p2, "music_note_param"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 313
    if-eqz p1, :cond_1

    .line 314
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rz:Landroid/support/v4/util/ArrayMap;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f10038a

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/oled/OledActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->RF:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rz:Landroid/support/v4/util/ArrayMap;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/oled/OledActivity;->b(Landroid/support/v4/util/ArrayMap;)V

    .line 316
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rt:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rz:Landroid/support/v4/util/ArrayMap;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/oled/OledActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->RF:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/support/v4/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 317
    iget p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->RF:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->RF:I

    goto :goto_0

    .line 319
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rt:Landroid/widget/Spinner;

    iget p2, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->RE:I

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 321
    :goto_0
    goto :goto_1

    .line 323
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rt:Landroid/widget/Spinner;

    iget p2, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->RE:I

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 327
    :cond_3
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900e9

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rq:Lcom/xiaopeng/devtools/presenter/oled/c;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->RA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/presenter/oled/c;->bE(Ljava/lang/String;)V

    .line 269
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Ru:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 270
    nop

    .line 275
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 115
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 255
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rq:Lcom/xiaopeng/devtools/presenter/oled/c;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/oled/c;->onDestroy()V

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rq:Lcom/xiaopeng/devtools/presenter/oled/c;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/oled/c;->gZ()V

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 261
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 262
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/devtools/bean/event/oled/OledEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 83
    iget p1, p1, Lcom/xiaopeng/devtools/bean/event/oled/OledEvent;->mMusicPlayStatus:I

    .line 84
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 85
    const-string p1, "qytang"

    const-string v2, "MUSIC_COMPLETE"

    invoke-static {p1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Ru:Landroid/widget/Button;

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Ru:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 92
    :cond_1
    if-ne p1, v0, :cond_3

    .line 93
    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->RD:I

    .line 94
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->RB:Ljava/util/List;

    if-eqz p1, :cond_5

    .line 95
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->RB:Ljava/util/List;

    iget v0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->RD:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/bean/oled/CustomOledMusicBook;

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->RC:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->RC:Ljava/util/List;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/oled/CustomOledMusicBook;->getNote()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;

    .line 99
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rq:Lcom/xiaopeng/devtools/presenter/oled/c;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/devtools/presenter/oled/c;->a(Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/oled/CustomOledMusicBook;->getDuration()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 102
    :cond_2
    goto :goto_0

    .line 104
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Ru:Landroid/widget/Button;

    if-eqz p1, :cond_4

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Ru:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 107
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 108
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    :cond_5
    :goto_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 279
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 285
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rz:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result p1

    if-ge p3, p1, :cond_0

    .line 286
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rz:Landroid/support/v4/util/ArrayMap;

    iget-object p2, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rz:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p2, p3}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->RC:Ljava/util/List;

    .line 287
    iput p3, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->RE:I

    goto :goto_0

    .line 289
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/xiaopeng/devtools/view/oled/OledMusicBookActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 290
    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/devtools/view/oled/OledActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 292
    goto :goto_0

    .line 281
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rv:Lcom/xiaopeng/devtools/view/oled/adapter/MusicBookAdapter;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/devtools/view/oled/adapter/MusicBookAdapter;->dv(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->RA:Ljava/lang/String;

    .line 282
    nop

    .line 297
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090354
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 302
    return-void
.end method

.method public z(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/bean/oled/OledData;",
            ">;)V"
        }
    .end annotation

    .line 144
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 146
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/devtools/bean/oled/OledData;

    .line 148
    rem-int/lit8 v3, v1, 0x3

    const/16 v4, 0x11

    if-nez v3, :cond_0

    .line 149
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Ry:Landroid/widget/LinearLayout;

    .line 150
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 152
    const/16 v6, 0x30

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 153
    iget-object v6, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Ry:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v5, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Ry:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 156
    iget-object v5, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Ry:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 158
    :cond_0
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 159
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0xe6

    const/16 v8, 0x5a

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 161
    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 162
    if-eqz v3, :cond_1

    .line 163
    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 165
    :cond_1
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    const v4, 0x7f0800c0

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 167
    const/high16 v4, 0x41c00000    # 24.0f

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setTextSize(F)V

    .line 168
    invoke-virtual {v2}, Lcom/xiaopeng/devtools/bean/oled/OledData;->getBtName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 169
    const/4 v4, -0x1

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 170
    nop

    .line 171
    new-instance v4, Lcom/xiaopeng/devtools/view/oled/OledActivity$2;

    invoke-direct {v4, p0, v2, v1, p1}, Lcom/xiaopeng/devtools/view/oled/OledActivity$2;-><init>(Lcom/xiaopeng/devtools/view/oled/OledActivity;Lcom/xiaopeng/devtools/bean/oled/OledData;ILjava/util/List;)V

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Ry:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 192
    const/4 v2, 0x2

    if-ne v3, v2, :cond_2

    .line 193
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rr:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Ry:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 144
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    rem-int/lit8 p1, p1, 0x3

    if-eqz p1, :cond_4

    .line 197
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rr:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Ry:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
    :cond_4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0c00a9

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rx:Landroid/view/View;

    .line 201
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rx:Landroid/view/View;

    const v1, 0x7f090354

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rs:Landroid/widget/Spinner;

    .line 202
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rx:Landroid/view/View;

    const v1, 0x7f090355

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rt:Landroid/widget/Spinner;

    .line 203
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rx:Landroid/view/View;

    const v1, 0x7f0900e9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Ru:Landroid/widget/Button;

    .line 205
    new-instance p1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {p1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 206
    const-string v1, "sound_of_music"

    const-string v2, "oled/sound_of_music/sound_of_music.mp3"

    invoke-virtual {p1, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rv:Lcom/xiaopeng/devtools/view/oled/adapter/MusicBookAdapter;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/devtools/view/oled/adapter/MusicBookAdapter;->setMusicBookMap(Landroid/support/v4/util/ArrayMap;)V

    .line 208
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rs:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rv:Lcom/xiaopeng/devtools/view/oled/adapter/MusicBookAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 209
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rs:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 210
    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->RA:Ljava/lang/String;

    .line 212
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rt:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rw:Lcom/xiaopeng/devtools/view/oled/adapter/MusicNoteAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 214
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rs:Landroid/widget/Spinner;

    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 215
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rt:Landroid/widget/Spinner;

    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 217
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Ru:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rq:Lcom/xiaopeng/devtools/presenter/oled/c;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/oled/c;->jQ()V

    .line 220
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rq:Lcom/xiaopeng/devtools/presenter/oled/c;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/oled/c;->jR()V

    .line 222
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rr:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rx:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 224
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity;->Rx:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/devtools/view/oled/OledActivity;->d(Landroid/view/View;I)V

    .line 225
    return-void
.end method
