.class public Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity$$ARouter$$Autowired;
.super Ljava/lang/Object;
.source "SearchMainActivity$$ARouter$$Autowired.java"

# interfaces
.implements Lcom/alibaba/android/arouter/facade/template/ISyringe;


# instance fields
.field private serializationService:Lcom/alibaba/android/arouter/facade/service/SerializationService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inject(Ljava/lang/Object;)V
    .locals 2

    .line 16
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/arouter/facade/service/SerializationService;

    invoke-virtual {v0, v1}, Lpp;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/arouter/facade/service/SerializationService;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity$$ARouter$$Autowired;->serializationService:Lcom/alibaba/android/arouter/facade/service/SerializationService;

    .line 17
    check-cast p1, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;

    .line 18
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "search_voice_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mVoiceSearchType:I

    .line 19
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "search_voice_keyword"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mVoiceSearchKeyword:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "search_voice_result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mVoiceResultListString:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "search_voice_total_page"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mVoiceResultTotalPage:I

    .line 22
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "voice_list_version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mVersion:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "fragment_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mFragmentUri:Ljava/lang/String;

    return-void
.end method
