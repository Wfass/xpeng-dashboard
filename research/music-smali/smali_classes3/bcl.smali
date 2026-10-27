.class public Lbcl;
.super Ljava/lang/Object;
.source "LocationModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbcl$a;
    }
.end annotation


# static fields
.field private static e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "440100"

    const-string v2, "430100"

    const-string v3, "410100"

    const-string v4, "370100"

    const-string v5, "350100"

    const-string v6, "360600"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lbcl;->e:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "\u5e7f\u5dde\u5e02"

    const-string/jumbo v2, "\u957f\u6c99\u5e02"

    const-string/jumbo v3, "\u90d1\u5dde\u5e02"

    const-string/jumbo v4, "\u6d4e\u5357\u5e02"

    const-string/jumbo v5, "\u798f\u5dde\u5e02"

    const-string/jumbo v6, "\u9e70\u6f6d\u5e02"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lbcl;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "440100"

    const-string v1, "sp_key_location_adcode"

    .line 49
    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lbcl;->c:Ljava/lang/String;

    .line 50
    iget-object v2, p0, Lbcl;->c:Ljava/lang/String;

    const-string v3, "-1"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    iput-object v0, p0, Lbcl;->c:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lbcl;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "\u5e7f\u5dde\u5e02"

    const-string v1, "sp_key_location_city"

    .line 54
    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lbcl;->d:Ljava/lang/String;

    .line 55
    iget-object v2, p0, Lbcl;->d:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    :cond_1
    iput-object v0, p0, Lbcl;->d:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lbcl;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_2
    invoke-direct {p0}, Lbcl;->c()V

    return-void
.end method

.method public static a()Lbcl;
    .locals 1

    .line 45
    sget-object v0, Lbcl$a;->a:Lbcl;

    return-object v0
.end method

.method private c()V
    .locals 4

    const-string v0, "init: "

    const-string v1, "LocationModel"

    .line 63
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 65
    const-class v2, Lcom/xiaopeng/lib/framework/locationmodule/LocationModuleEntry;

    new-instance v3, Lcom/xiaopeng/lib/framework/locationmodule/LocationModuleEntry;

    invoke-direct {v3}, Lcom/xiaopeng/lib/framework/locationmodule/LocationModuleEntry;-><init>()V

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    .line 66
    const-class v2, Lcom/xiaopeng/lib/framework/locationmodule/LocationModuleEntry;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationConsumer;

    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationConsumer;

    .line 68
    :try_start_0
    sget-object v3, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationConsumer;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private d()V
    .locals 3

    .line 100
    iget-boolean v0, p0, Lbcl;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_0
    const-class v0, Lcom/xiaopeng/lib/framework/locationmodule/LocationModuleEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationConsumer;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationConsumer;

    .line 106
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->DR_LOCATION:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationConsumer;->subscribe(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;)V

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lbcl;->b:Z
    :try_end_0
    .catch Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to subscribe location, exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationModel"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lbcl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public onMessageEventPosting(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->POSTING:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 119
    iget-object v0, p0, Lbcl;->a:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    const-string v1, "sp_key_location_city"

    const-string v2, "sp_key_location_adcode"

    if-nez v0, :cond_0

    .line 120
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationEvent;->location()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    move-result-object v0

    iput-object v0, p0, Lbcl;->a:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    .line 121
    iget-object v0, p0, Lbcl;->a:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->adCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbcl;->c:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lbcl;->a:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->city()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbcl;->d:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lbcl;->a:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->adCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lbcl;->a:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->city()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lbcl;->a:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->adCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationEvent;->location()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    move-result-object v3

    invoke-interface {v3}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->adCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationEvent;->location()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->adCode()Ljava/lang/String;

    move-result-object v0

    const-string v3, "-1"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationEvent;->location()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    move-result-object v0

    iput-object v0, p0, Lbcl;->a:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    .line 129
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationEvent;->location()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->adCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbcl;->c:Ljava/lang/String;

    .line 130
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationEvent;->location()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->city()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbcl;->d:Ljava/lang/String;

    .line 131
    iget-object p1, p0, Lbcl;->c:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lbcl;->d:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ae;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ae;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onMessageEventPosting(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service State changed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent;->type()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent;->type()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;->BOUND:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;

    if-ne p1, v0, :cond_0

    const-string p1, "onMessageEventPosting: "

    .line 92
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-direct {p0}, Lbcl;->d()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 95
    iput-boolean p1, p0, Lbcl;->b:Z

    :goto_0
    return-void
.end method
