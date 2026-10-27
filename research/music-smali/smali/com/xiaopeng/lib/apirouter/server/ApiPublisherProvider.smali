.class public Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;
.super Landroid/content/ContentProvider;
.source "ApiPublisherProvider.java"


# static fields
.field public static a:Landroid/content/Context; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static b:Landroid/content/Context; = null

.field private static final c:Ljava/lang/String; = "com.xiaopeng.lib.apirouter.server.ApiPublisherProvider"


# instance fields
.field private d:Lcom/xiaopeng/lib/apirouter/server/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 74
    iget-object p3, p0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->d:Lcom/xiaopeng/lib/apirouter/server/a;

    invoke-virtual {p3, p1}, Lcom/xiaopeng/lib/apirouter/server/a;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p3

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_0

    .line 77
    iget-object p1, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/os/IBinder;

    const-string p2, "binder"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 78
    iget-object p1, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string p2, "manifest"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_0
    sget-object p3, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call service pair is null!!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", arg = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Laor;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 4

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->b:Landroid/content/Context;

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->a:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/xiaopeng/lib/apirouter/server/a;

    invoke-direct {v0}, Lcom/xiaopeng/lib/apirouter/server/a;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->d:Lcom/xiaopeng/lib/apirouter/server/a;

    .line 55
    sget-object v0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->c:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "2.0.9.22-napa_HEAD_2bf32ea_2024/12/17 02:19:57"

    aput-object v3, v1, v2

    sget-object v2, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "onCreate version:[%s], pkgName:[%s]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laor;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
