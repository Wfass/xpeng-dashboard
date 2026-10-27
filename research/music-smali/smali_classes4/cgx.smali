.class public Lcgx;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# static fields
.field private static final a:Ljava/lang/String; = "cgx"

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcgv;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcgx;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcgw;
    .locals 2

    .line 65
    sget-object v0, Lcgx;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 69
    sget-object v0, Lcgx;->c:Ljava/lang/String;

    .line 72
    :cond_0
    invoke-static {p0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcgx;->a(Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/lang/String;Ljava/lang/String;)Lcgw;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    .line 76
    :cond_1
    new-instance p0, Ljava/util/MissingResourceException;

    sget-object v0, Lcgx;->a:Ljava/lang/String;

    const-string v1, "Error locating the logging class"

    invoke-direct {p0, v1, v0, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/lang/String;Ljava/lang/String;)Lcgw;
    .locals 1

    const/4 v0, 0x0

    .line 97
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_0

    .line 106
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcgw;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    invoke-interface {p0, p1, p2, p3}, Lcgw;->initialise(Ljava/util/ResourceBundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    return-object v0

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0

    :catch_1
    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 153
    sput-object p0, Lcgx;->b:Ljava/lang/String;

    return-void
.end method
