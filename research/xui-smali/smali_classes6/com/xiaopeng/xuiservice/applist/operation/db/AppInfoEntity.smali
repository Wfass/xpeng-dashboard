.class public Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;
.super Ljava/lang/Object;
.source "AppInfoEntity.java"


# annotations
.annotation build Landroidx/room/Entity;
    primaryKeys = {
        "biz_uk_name"
    }
    tableName = "app_info"
.end annotation


# instance fields
.field public biz_uk_name:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public config_url:Ljava/lang/String;

.field public dock_icon:Ljava/lang/String;

.field public group_type:I

.field public large_icon:Ljava/lang/String;

.field public small_icon:Ljava/lang/String;

.field public small_night_icon:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 64
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 65
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 66
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    .line 67
    .local v2, "that":Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;
    iget v3, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->group_type:I

    iget v4, v2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->group_type:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    iget-object v4, v2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_icon:Ljava/lang/String;

    iget-object v4, v2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_icon:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->large_icon:Ljava/lang/String;

    iget-object v4, v2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->large_icon:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->dock_icon:Ljava/lang/String;

    iget-object v4, v2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->dock_icon:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_night_icon:Ljava/lang/String;

    iget-object v4, v2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_night_icon:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->config_url:Ljava/lang/String;

    iget-object v4, v2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->config_url:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 65
    .end local v2    # "that":Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 72
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->group_type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_icon:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->large_icon:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->dock_icon:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_night_icon:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->config_url:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppInfoEntity{group_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->group_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", biz_uk_name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", small_icon=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_icon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", large_icon=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->large_icon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", dock_icon=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->dock_icon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", small_night_icon=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_night_icon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", config_url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->config_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
