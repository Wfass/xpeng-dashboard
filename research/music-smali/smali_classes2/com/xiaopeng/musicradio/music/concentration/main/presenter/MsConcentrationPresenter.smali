.class public Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;
.super Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;
.source "MsConcentrationPresenter.java"

# interfaces
.implements Laxy$a;
.implements Laxy$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter<",
        "Lcom/xiaopeng/musicradio/music/concentration/main/view/b;",
        ">;",
        "Laxy$a;",
        "Laxy$b;"
    }
.end annotation


# static fields
.field public static b:Ljava/lang/String;

.field public static f:I

.field public static g:I

.field public static h:I

.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected c:I

.field protected d:Z

.field protected e:I

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:Z

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->i:Ljava/util/Map;

    .line 63
    sget-object v0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->i:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "daily"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->i:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "concentration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->i:Ljava/util/Map;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "plisten"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->i:Ljava/util/Map;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "region"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->i:Ljava/util/Map;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "radio"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "100823"

    .line 70
    sput-object v0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->b:Ljava/lang/String;

    const/16 v0, 0x12

    .line 94
    sput v0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->f:I

    const/4 v0, 0x5

    .line 95
    sput v0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->g:I

    const/16 v0, 0xc

    .line 96
    sput v0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->h:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;-><init>()V

    const/4 v0, 0x1

    .line 73
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->c:I

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->d:Z

    const/4 v1, -0x1

    .line 78
    iput v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->e:I

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->j:Ljava/util/ArrayList;

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->k:Ljava/util/ArrayList;

    const/16 v1, 0xa

    .line 97
    iput v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->l:I

    .line 98
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->m:Z

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->n:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->o:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public RadioChange(Lbhk$a;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 248
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/b;

    invoke-virtual {p1}, Lbhk$a;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/b;->d(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public RmChange(Lbhk$c;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 241
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/b;

    invoke-virtual {p1}, Lbhk$c;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/b;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected a(I)V
    .locals 1

    .line 270
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbdm;->a(I)Lbeg;

    move-result-object v0

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->e:I

    const/4 p1, 0x0

    .line 272
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->d:Z

    .line 273
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 274
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 275
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->n:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 276
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->o:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 277
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->c()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string p1, "MsConcentrationPresente"

    const-string v0, "msconcentration--onDataFetch"

    .line 82
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->c()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->d:Z

    if-nez v0, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/b;->a()V

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->d()V

    :cond_1
    return-void
.end method

.method public changeAccountType(Lasj$b;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 255
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    .line 256
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->a(I)V

    return-void
.end method

.method protected d()V
    .locals 9

    .line 167
    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "\u534e\u8bed"

    .line 168
    sput-object v0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const-string v0, "1"

    .line 170
    sput-object v0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "100823"

    .line 172
    sput-object v0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->b:Ljava/lang/String;

    :goto_0
    const-string v0, "MsConcentrationPresente"

    const-string v1, "loadConcentrationData: start"

    .line 175
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {}, Lbes;->a()Lbes;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter$1;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;)V

    sget-object v4, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->b:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x1

    iget v7, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->c:I

    iget v8, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->e:I

    invoke-virtual/range {v2 .. v8}, Lbes;->a(Lber;Ljava/lang/String;IIII)V

    return-void
.end method

.method public dealMusicEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 227
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/main/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/b;->c()V

    :cond_0
    return-void
.end method

.method public dealMusicInfo(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 234
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/main/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/b;->c()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 284
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->g()V

    .line 285
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->d:Z

    if-nez v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->c()V

    :cond_0
    return-void
.end method

.method public n_()V
    .locals 2

    const-string v0, "MsConcentrationPresente"

    const-string v1, "msconcentration--onErrorRetry"

    .line 88
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->c()V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 106
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreateView mHasLoadAll"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->d:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MsConcentrationPresente"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 1

    .line 135
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->onDestroy(Landroidx/lifecycle/n;)V

    const-string p1, "MsConcentrationPresente"

    const-string v0, "onDestroy"

    .line 136
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object p1

    invoke-virtual {p1, p0}, Laxy;->b(Laxy$a;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 1

    .line 261
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->onResume(Landroidx/lifecycle/n;)V

    .line 262
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    .line 263
    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->e:I

    if-ne p1, v0, :cond_0

    return-void

    .line 266
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->a(I)V

    return-void
.end method

.method public onSwitchElement(Lcom/xiaopeng/musicradio/event/common/b$a;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwitchElement: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MsConcentrationPresente"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 146
    :cond_0
    sget-object v0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    return-void

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$a;->a()I

    move-result v1

    if-nez v1, :cond_2

    .line 151
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->d(Ljava/lang/Object;)V

    .line 152
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/MsConcentrationPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/main/view/b;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/b;->a(I)V

    :cond_2
    return-void
.end method
