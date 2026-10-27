.class public final synthetic Lcom/xiaopeng/xuiservice/xapp/xpad/-$$Lambda$XPADBizManager$MyAppFilterListner$MYIo8VGjSHd22QI8RtGeKNQZbDQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/xapp/xpad/-$$Lambda$XPADBizManager$MyAppFilterListner$MYIo8VGjSHd22QI8RtGeKNQZbDQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/xpad/-$$Lambda$XPADBizManager$MyAppFilterListner$MYIo8VGjSHd22QI8RtGeKNQZbDQ;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/xapp/xpad/-$$Lambda$XPADBizManager$MyAppFilterListner$MYIo8VGjSHd22QI8RtGeKNQZbDQ;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/xpad/-$$Lambda$XPADBizManager$MyAppFilterListner$MYIo8VGjSHd22QI8RtGeKNQZbDQ;->INSTANCE:Lcom/xiaopeng/xuiservice/xapp/xpad/-$$Lambda$XPADBizManager$MyAppFilterListner$MYIo8VGjSHd22QI8RtGeKNQZbDQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager$MyAppFilterListner;->lambda$onFilterEvent$0(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)V

    return-void
.end method
