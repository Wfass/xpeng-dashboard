.class public final synthetic Lcom/alibaba/fastjson2/-$$Lambda$d$6Vp9TM9joiWAdGFSD1mhuH8keoc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/security/PrivilegedAction;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/-$$Lambda$d$6Vp9TM9joiWAdGFSD1mhuH8keoc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/-$$Lambda$d$6Vp9TM9joiWAdGFSD1mhuH8keoc;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/-$$Lambda$d$6Vp9TM9joiWAdGFSD1mhuH8keoc;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/-$$Lambda$d$6Vp9TM9joiWAdGFSD1mhuH8keoc;->INSTANCE:Lcom/alibaba/fastjson2/-$$Lambda$d$6Vp9TM9joiWAdGFSD1mhuH8keoc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/alibaba/fastjson2/d;->lambda$6Vp9TM9joiWAdGFSD1mhuH8keoc()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
