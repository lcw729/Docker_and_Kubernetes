# ConfigMap

- Configmap은 설정 정보를 저장해놓는 일종의 저장소 역할을 한다.
- Configmap은 key-vale 형식으로 저장이 된다.
- Configmap을 생성하는 방법
    - literal로 생성하는 방법
        - key 값이 language이고, value가 java인 configmap 생성
        ```
        kubectl create configmap [configmap 이름] --from-literal=[키]=[값]
        kubectl create configmap hello-cm --from-literal=language=java
        ```
        ```
        # yaml로 생성
        apiVersion: v1
        kind: ConfigMap
        metadata:
            name: hello-cm
        data:
            language: java
        ```
        - deployment yaml에 추가
        ```
        # operator.yaml
        env:
        - name: LANGUAGE
          valueFrom:
            configMapKeyRef:
               name: hello-cm
               key: language
        ```
    - 파일로 생성하는 방법