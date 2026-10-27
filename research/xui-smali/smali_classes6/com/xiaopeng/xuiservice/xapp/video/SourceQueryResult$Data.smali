.class public Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;
.super Ljava/lang/Object;
.source "SourceQueryResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# static fields
.field public static final ICON_IDENTIFIER:Ljava/lang/String; = "video_icon_info"


# instance fields
.field private app_name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_name"
    .end annotation
.end field

.field private icon_info:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon_info"
    .end annotation
.end field

.field private link:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "link"
    .end annotation
.end field

.field private logo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logo"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private package_name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "package_name"
    .end annotation
.end field

.field private poster:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "poster"
    .end annotation
.end field

.field private source:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source"
    .end annotation
.end field

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult;

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->app_name:Ljava/lang/String;

    return-object v0
.end method

.method public getIconInfo()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->icon_info:I

    return v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPoster()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->poster:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->source:I

    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .line 110
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->app_name:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setIconInfo(I)V
    .locals 0
    .param p1, "iconInfo"    # I

    .line 102
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->icon_info:I

    .line 103
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "link"    # Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->link:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0
    .param p1, "logo"    # Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->logo:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->name:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->package_name:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setPoster(Ljava/lang/String;)V
    .locals 0
    .param p1, "poster"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->poster:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setSource(I)V
    .locals 0
    .param p1, "source"    # I

    .line 78
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->source:I

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", poster=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->poster:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", source=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->source:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", logo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->logo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", link=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->link:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", iconInfo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->icon_info:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->app_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pkgName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->package_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
